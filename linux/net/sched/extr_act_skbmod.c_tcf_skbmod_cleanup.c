
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_skbmod_params {int dummy; } ;
struct tcf_skbmod {int skbmod_p; } ;
struct tc_action {int dummy; } ;


 int kfree_rcu (struct tcf_skbmod_params*,int ) ;
 int rcu ;
 struct tcf_skbmod_params* rcu_dereference_protected (int ,int) ;
 struct tcf_skbmod* to_skbmod (struct tc_action*) ;

__attribute__((used)) static void tcf_skbmod_cleanup(struct tc_action *a)
{
 struct tcf_skbmod *d = to_skbmod(a);
 struct tcf_skbmod_params *p;

 p = rcu_dereference_protected(d->skbmod_p, 1);
 if (p)
  kfree_rcu(p, rcu);
}
