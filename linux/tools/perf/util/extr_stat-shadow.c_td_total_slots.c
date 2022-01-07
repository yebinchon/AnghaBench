
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;


 int STAT_TOPDOWN_TOTAL_SLOTS ;
 double runtime_stat_avg (struct runtime_stat*,int ,int,int) ;

__attribute__((used)) static double td_total_slots(int ctx, int cpu, struct runtime_stat *st)
{
 return runtime_stat_avg(st, STAT_TOPDOWN_TOTAL_SLOTS, ctx, cpu);
}
