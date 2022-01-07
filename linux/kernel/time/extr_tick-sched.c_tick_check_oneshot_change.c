
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_sched {scalar_t__ nohz_mode; int check_clocks; } ;


 scalar_t__ NOHZ_MODE_INACTIVE ;
 int test_and_clear_bit (int ,int *) ;
 struct tick_sched* this_cpu_ptr (int *) ;
 int tick_cpu_sched ;
 int tick_is_oneshot_available () ;
 int tick_nohz_switch_to_nohz () ;
 int timekeeping_valid_for_hres () ;

int tick_check_oneshot_change(int allow_nohz)
{
 struct tick_sched *ts = this_cpu_ptr(&tick_cpu_sched);

 if (!test_and_clear_bit(0, &ts->check_clocks))
  return 0;

 if (ts->nohz_mode != NOHZ_MODE_INACTIVE)
  return 0;

 if (!timekeeping_valid_for_hres() || !tick_is_oneshot_available())
  return 0;

 if (!allow_nohz)
  return 1;

 tick_nohz_switch_to_nohz();
 return 0;
}
