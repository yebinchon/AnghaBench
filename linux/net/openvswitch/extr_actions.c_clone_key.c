
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct action_flow_keys {struct sw_flow_key* key; } ;


 int OVS_DEFERRED_ACTION_THRESHOLD ;
 int exec_actions_level ;
 int flow_keys ;
 struct action_flow_keys* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static struct sw_flow_key *clone_key(const struct sw_flow_key *key_)
{
 struct action_flow_keys *keys = this_cpu_ptr(flow_keys);
 int level = this_cpu_read(exec_actions_level);
 struct sw_flow_key *key = ((void*)0);

 if (level <= OVS_DEFERRED_ACTION_THRESHOLD) {
  key = &keys->key[level - 1];
  *key = *key_;
 }

 return key;
}
