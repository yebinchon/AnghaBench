
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_csum_params {int dummy; } ;
struct tcf_csum {int params; } ;
struct tc_action {int dummy; } ;


 int kfree_rcu (struct tcf_csum_params*,int ) ;
 int rcu ;
 struct tcf_csum_params* rcu_dereference_protected (int ,int) ;
 struct tcf_csum* to_tcf_csum (struct tc_action*) ;

__attribute__((used)) static void tcf_csum_cleanup(struct tc_action *a)
{
 struct tcf_csum *p = to_tcf_csum(a);
 struct tcf_csum_params *params;

 params = rcu_dereference_protected(p->params, 1);
 if (params)
  kfree_rcu(params, rcu);
}
