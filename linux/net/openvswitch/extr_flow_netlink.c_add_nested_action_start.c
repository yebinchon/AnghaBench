
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int actions_len; } ;


 int ovs_nla_add_action (struct sw_flow_actions**,int,int *,int ,int) ;

__attribute__((used)) static inline int add_nested_action_start(struct sw_flow_actions **sfa,
       int attrtype, bool log)
{
 int used = (*sfa)->actions_len;
 int err;

 err = ovs_nla_add_action(sfa, attrtype, ((void*)0), 0, log);
 if (err)
  return err;

 return used;
}
