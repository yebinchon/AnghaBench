
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_action_ops {int owner; } ;
struct tc_action {struct tc_action_ops* ops; } ;


 int ACT_P_DELETED ;
 int TCA_ACT_MAX_PRIO ;
 int __tcf_idr_release (struct tc_action*,int,int) ;
 int module_put (int ) ;

int tcf_action_destroy(struct tc_action *actions[], int bind)
{
 const struct tc_action_ops *ops;
 struct tc_action *a;
 int ret = 0, i;

 for (i = 0; i < TCA_ACT_MAX_PRIO && actions[i]; i++) {
  a = actions[i];
  actions[i] = ((void*)0);
  ops = a->ops;
  ret = __tcf_idr_release(a, bind, 1);
  if (ret == ACT_P_DELETED)
   module_put(ops->owner);
  else if (ret < 0)
   return ret;
 }
 return ret;
}
