
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_sample {int psample_group; } ;
struct tc_action {int dummy; } ;
struct psample_group {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int psample_group_put (struct psample_group*) ;
 struct psample_group* rcu_dereference_protected (int ,int) ;
 struct tcf_sample* to_sample (struct tc_action*) ;

__attribute__((used)) static void tcf_sample_cleanup(struct tc_action *a)
{
 struct tcf_sample *s = to_sample(a);
 struct psample_group *psample_group;


 psample_group = rcu_dereference_protected(s->psample_group, 1);
 RCU_INIT_POINTER(s->psample_group, ((void*)0));
 if (psample_group)
  psample_group_put(psample_group);
}
