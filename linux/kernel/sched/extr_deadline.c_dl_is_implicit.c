
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {scalar_t__ dl_deadline; scalar_t__ dl_period; } ;



__attribute__((used)) static inline bool dl_is_implicit(struct sched_dl_entity *dl_se)
{
 return dl_se->dl_deadline == dl_se->dl_period;
}
