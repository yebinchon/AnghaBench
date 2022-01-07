
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_domain {struct sched_domain* shared; int ref; int groups; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int free_sched_groups (int ,int) ;
 int kfree (struct sched_domain*) ;

__attribute__((used)) static void destroy_sched_domain(struct sched_domain *sd)
{





 free_sched_groups(sd->groups, 1);

 if (sd->shared && atomic_dec_and_test(&sd->shared->ref))
  kfree(sd->shared);
 kfree(sd);
}
