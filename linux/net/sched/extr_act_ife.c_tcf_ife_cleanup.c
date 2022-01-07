
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ife_params {int dummy; } ;
struct tcf_ife_info {int params; int tcf_lock; } ;
struct tc_action {int dummy; } ;


 int _tcf_ife_cleanup (struct tc_action*) ;
 int kfree_rcu (struct tcf_ife_params*,int ) ;
 int rcu ;
 struct tcf_ife_params* rcu_dereference_protected (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct tcf_ife_info* to_ife (struct tc_action*) ;

__attribute__((used)) static void tcf_ife_cleanup(struct tc_action *a)
{
 struct tcf_ife_info *ife = to_ife(a);
 struct tcf_ife_params *p;

 spin_lock_bh(&ife->tcf_lock);
 _tcf_ife_cleanup(a);
 spin_unlock_bh(&ife->tcf_lock);

 p = rcu_dereference_protected(ife->params, 1);
 if (p)
  kfree_rcu(p, rcu);
}
