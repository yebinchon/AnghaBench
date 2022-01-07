
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sched_dl_entity {int dl_deadline; int runtime; int deadline; int dl_runtime; } ;


 int DL_SCALE ;
 int dl_time_before (int,int) ;

__attribute__((used)) static bool dl_entity_overflow(struct sched_dl_entity *dl_se,
          struct sched_dl_entity *pi_se, u64 t)
{
 u64 left, right;
 left = (pi_se->dl_deadline >> DL_SCALE) * (dl_se->runtime >> DL_SCALE);
 right = ((dl_se->deadline - t) >> DL_SCALE) *
  (pi_se->dl_runtime >> DL_SCALE);

 return dl_time_before(right, left);
}
