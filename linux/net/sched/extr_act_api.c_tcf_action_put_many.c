
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action_ops {int owner; } ;
struct tc_action {struct tc_action_ops* ops; } ;


 int TCA_ACT_MAX_PRIO ;
 int module_put (int ) ;
 scalar_t__ tcf_action_put (struct tc_action*) ;

__attribute__((used)) static void tcf_action_put_many(struct tc_action *actions[])
{
 int i;

 for (i = 0; i < TCA_ACT_MAX_PRIO; i++) {
  struct tc_action *a = actions[i];
  const struct tc_action_ops *ops;

  if (!a)
   continue;
  ops = a->ops;
  if (tcf_action_put(a))
   module_put(ops->owner);
 }
}
