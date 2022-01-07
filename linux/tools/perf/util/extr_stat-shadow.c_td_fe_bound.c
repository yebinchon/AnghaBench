
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;


 int STAT_TOPDOWN_FETCH_BUBBLES ;
 double runtime_stat_avg (struct runtime_stat*,int ,int,int) ;
 double td_total_slots (int,int,struct runtime_stat*) ;

__attribute__((used)) static double td_fe_bound(int ctx, int cpu, struct runtime_stat *st)
{
 double fe_bound = 0;
 double total_slots = td_total_slots(ctx, cpu, st);
 double fetch_bub = runtime_stat_avg(st, STAT_TOPDOWN_FETCH_BUBBLES,
         ctx, cpu);

 if (total_slots)
  fe_bound = fetch_bub / total_slots;
 return fe_bound;
}
