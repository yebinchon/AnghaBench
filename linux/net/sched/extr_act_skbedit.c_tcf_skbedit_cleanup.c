
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_skbedit_params {int dummy; } ;
struct tcf_skbedit {int params; } ;
struct tc_action {int dummy; } ;


 int kfree_rcu (struct tcf_skbedit_params*,int ) ;
 int rcu ;
 struct tcf_skbedit_params* rcu_dereference_protected (int ,int) ;
 struct tcf_skbedit* to_skbedit (struct tc_action*) ;

__attribute__((used)) static void tcf_skbedit_cleanup(struct tc_action *a)
{
 struct tcf_skbedit *d = to_skbedit(a);
 struct tcf_skbedit_params *params;

 params = rcu_dereference_protected(d->params, 1);
 if (params)
  kfree_rcu(params, rcu);
}
