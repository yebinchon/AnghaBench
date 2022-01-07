
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_mpls_params {int dummy; } ;
struct tcf_mpls {int mpls_p; } ;
struct tc_action {int dummy; } ;


 int kfree_rcu (struct tcf_mpls_params*,int ) ;
 int rcu ;
 struct tcf_mpls_params* rcu_dereference_protected (int ,int) ;
 struct tcf_mpls* to_mpls (struct tc_action*) ;

__attribute__((used)) static void tcf_mpls_cleanup(struct tc_action *a)
{
 struct tcf_mpls *m = to_mpls(a);
 struct tcf_mpls_params *p;

 p = rcu_dereference_protected(m->mpls_p, 1);
 if (p)
  kfree_rcu(p, rcu);
}
