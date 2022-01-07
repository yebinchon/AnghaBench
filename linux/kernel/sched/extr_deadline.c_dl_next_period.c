
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sched_dl_entity {scalar_t__ dl_period; scalar_t__ dl_deadline; scalar_t__ deadline; } ;



__attribute__((used)) static inline u64 dl_next_period(struct sched_dl_entity *dl_se)
{
 return dl_se->deadline - dl_se->dl_deadline + dl_se->dl_period;
}
