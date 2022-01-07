
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int deadline; } ;


 scalar_t__ dl_entity_is_special (struct sched_dl_entity*) ;
 scalar_t__ dl_time_before (int ,int ) ;

__attribute__((used)) static inline bool
dl_entity_preempt(struct sched_dl_entity *a, struct sched_dl_entity *b)
{
 return dl_entity_is_special(a) ||
        dl_time_before(a->deadline, b->deadline);
}
