
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_police_params {int dummy; } ;
struct tcf_police {int params; } ;
struct tc_action {int dummy; } ;


 int kfree_rcu (struct tcf_police_params*,int ) ;
 int rcu ;
 struct tcf_police_params* rcu_dereference_protected (int ,int) ;
 struct tcf_police* to_police (struct tc_action*) ;

__attribute__((used)) static void tcf_police_cleanup(struct tc_action *a)
{
 struct tcf_police *police = to_police(a);
 struct tcf_police_params *p;

 p = rcu_dereference_protected(police->params, 1);
 if (p)
  kfree_rcu(p, rcu);
}
