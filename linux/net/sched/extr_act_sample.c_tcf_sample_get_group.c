
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tc_action_priv_destructor ;
struct tcf_sample {int tcf_lock; int psample_group; } ;
struct tc_action {int dummy; } ;
struct psample_group {int dummy; } ;


 int lockdep_is_held (int *) ;
 int psample_group_take (struct psample_group*) ;
 struct psample_group* rcu_dereference_protected (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_psample_group_put ;
 struct tcf_sample* to_sample (struct tc_action const*) ;

__attribute__((used)) static struct psample_group *
tcf_sample_get_group(const struct tc_action *a,
       tc_action_priv_destructor *destructor)
{
 struct tcf_sample *s = to_sample(a);
 struct psample_group *group;

 spin_lock_bh(&s->tcf_lock);
 group = rcu_dereference_protected(s->psample_group,
       lockdep_is_held(&s->tcf_lock));
 if (group) {
  psample_group_take(group);
  *destructor = tcf_psample_group_put;
 }
 spin_unlock_bh(&s->tcf_lock);

 return group;
}
