
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;


 int STAT_TOPDOWN_SLOTS_RETIRED ;
 double runtime_stat_avg (struct runtime_stat*,int ,int,int) ;
 double td_total_slots (int,int,struct runtime_stat*) ;

__attribute__((used)) static double td_retiring(int ctx, int cpu, struct runtime_stat *st)
{
 double retiring = 0;
 double total_slots = td_total_slots(ctx, cpu, st);
 double ret_slots = runtime_stat_avg(st, STAT_TOPDOWN_SLOTS_RETIRED,
         ctx, cpu);

 if (total_slots)
  retiring = ret_slots / total_slots;
 return retiring;
}
