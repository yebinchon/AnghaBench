
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_stat {int dummy; } ;


 int STAT_TOPDOWN_RECOVERY_BUBBLES ;
 int STAT_TOPDOWN_SLOTS_ISSUED ;
 int STAT_TOPDOWN_SLOTS_RETIRED ;
 double runtime_stat_avg (struct runtime_stat*,int ,int,int) ;
 double sanitize_val (double) ;
 double td_total_slots (int,int,struct runtime_stat*) ;

__attribute__((used)) static double td_bad_spec(int ctx, int cpu, struct runtime_stat *st)
{
 double bad_spec = 0;
 double total_slots;
 double total;

 total = runtime_stat_avg(st, STAT_TOPDOWN_SLOTS_ISSUED, ctx, cpu) -
  runtime_stat_avg(st, STAT_TOPDOWN_SLOTS_RETIRED, ctx, cpu) +
  runtime_stat_avg(st, STAT_TOPDOWN_RECOVERY_BUBBLES, ctx, cpu);

 total_slots = td_total_slots(ctx, cpu, st);
 if (total_slots)
  bad_spec = total / total_slots;
 return sanitize_val(bad_spec);
}
