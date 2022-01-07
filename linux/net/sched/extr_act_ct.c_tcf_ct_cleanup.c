
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ct_params {int rcu; } ;
struct tcf_ct {int params; } ;
struct tc_action {int dummy; } ;


 int call_rcu (int *,int ) ;
 struct tcf_ct_params* rcu_dereference_protected (int ,int) ;
 int tcf_ct_params_free ;
 struct tcf_ct* to_ct (struct tc_action*) ;

__attribute__((used)) static void tcf_ct_cleanup(struct tc_action *a)
{
 struct tcf_ct_params *params;
 struct tcf_ct *c = to_ct(a);

 params = rcu_dereference_protected(c->params, 1);
 if (params)
  call_rcu(&params->rcu, tcf_ct_params_free);
}
