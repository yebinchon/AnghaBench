
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num_entries; } ;
struct flow_rule {TYPE_1__ action; } ;
struct TYPE_4__ {int entries; } ;


 int GFP_KERNEL ;
 TYPE_2__ action ;
 struct flow_rule* kzalloc (int ,int ) ;
 int struct_size (struct flow_rule*,int ,unsigned int) ;

struct flow_rule *flow_rule_alloc(unsigned int num_actions)
{
 struct flow_rule *rule;

 rule = kzalloc(struct_size(rule, action.entries, num_actions),
         GFP_KERNEL);
 if (!rule)
  return ((void*)0);

 rule->action.num_entries = num_actions;

 return rule;
}
