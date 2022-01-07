
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_group {int ref; struct sched_group* sgc; struct sched_group* next; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct sched_group*) ;

__attribute__((used)) static void free_sched_groups(struct sched_group *sg, int free_sgc)
{
 struct sched_group *tmp, *first;

 if (!sg)
  return;

 first = sg;
 do {
  tmp = sg->next;

  if (free_sgc && atomic_dec_and_test(&sg->sgc->ref))
   kfree(sg->sgc);

  if (atomic_dec_and_test(&sg->ref))
   kfree(sg);
  sg = tmp;
 } while (sg != first);
}
