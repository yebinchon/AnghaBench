
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_idrinfo {int dummy; } ;
struct tc_action_ops {int owner; } ;
struct tc_action {int tcfa_index; struct tcf_idrinfo* idrinfo; struct tc_action_ops* ops; } ;
struct net {int dummy; } ;


 int TCA_ACT_MAX_PRIO ;
 int module_put (int ) ;
 scalar_t__ tcf_action_put (struct tc_action*) ;
 int tcf_idr_delete_index (struct tcf_idrinfo*,int ) ;

__attribute__((used)) static int tcf_action_delete(struct net *net, struct tc_action *actions[])
{
 int i;

 for (i = 0; i < TCA_ACT_MAX_PRIO && actions[i]; i++) {
  struct tc_action *a = actions[i];
  const struct tc_action_ops *ops = a->ops;



  struct tcf_idrinfo *idrinfo = a->idrinfo;
  u32 act_index = a->tcfa_index;

  actions[i] = ((void*)0);
  if (tcf_action_put(a)) {

   module_put(ops->owner);
  } else {
   int ret;


   ret = tcf_idr_delete_index(idrinfo, act_index);
   if (ret < 0)
    return ret;
  }
 }
 return 0;
}
