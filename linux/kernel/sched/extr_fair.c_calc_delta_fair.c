
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ weight; } ;
struct sched_entity {TYPE_1__ load; } ;


 scalar_t__ NICE_0_LOAD ;
 int __calc_delta (int ,scalar_t__,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u64 calc_delta_fair(u64 delta, struct sched_entity *se)
{
 if (unlikely(se->load.weight != NICE_0_LOAD))
  delta = __calc_delta(delta, NICE_0_LOAD, &se->load);

 return delta;
}
