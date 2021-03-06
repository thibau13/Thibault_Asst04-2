# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150302062941) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.integer  "locations_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["locations_id"], name: "index_events_on_locations_id"

  create_table "events_locations", id: false, force: true do |t|
    t.integer "locations_id"
    t.integer "events_id"
  end

  add_index "events_locations", ["events_id"], name: "index_events_locations_on_events_id"
  add_index "events_locations", ["locations_id"], name: "index_events_locations_on_locations_id"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "tag"
    t.integer  "events_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["events_id"], name: "index_locations_on_events_id"

end
