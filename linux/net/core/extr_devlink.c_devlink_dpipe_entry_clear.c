
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_value {int mask; int value; } ;
struct devlink_dpipe_entry {unsigned int action_values_count; unsigned int match_values_count; struct devlink_dpipe_value* match_values; struct devlink_dpipe_value* action_values; } ;


 int kfree (int ) ;

void devlink_dpipe_entry_clear(struct devlink_dpipe_entry *entry)

{
 unsigned int value_count, value_index;
 struct devlink_dpipe_value *value;

 value = entry->action_values;
 value_count = entry->action_values_count;
 for (value_index = 0; value_index < value_count; value_index++) {
  kfree(value[value_index].value);
  kfree(value[value_index].mask);
 }

 value = entry->match_values;
 value_count = entry->match_values_count;
 for (value_index = 0; value_index < value_count; value_index++) {
  kfree(value[value_index].value);
  kfree(value[value_index].mask);
 }
}
