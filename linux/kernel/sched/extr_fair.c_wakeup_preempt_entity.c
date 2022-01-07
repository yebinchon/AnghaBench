
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {scalar_t__ vruntime; } ;
typedef scalar_t__ s64 ;


 scalar_t__ wakeup_gran (struct sched_entity*) ;

__attribute__((used)) static int
wakeup_preempt_entity(struct sched_entity *curr, struct sched_entity *se)
{
 s64 gran, vdiff = curr->vruntime - se->vruntime;

 if (vdiff <= 0)
  return -1;

 gran = wakeup_gran(se);
 if (vdiff > gran)
  return 1;

 return 0;
}
