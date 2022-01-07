
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PROFILING ;
 int do_timer (int) ;
 int get_irq_regs () ;
 int jiffies_lock ;
 int ktime_add (int ,int ) ;
 int profile_tick (int ) ;
 int tick_do_timer_cpu ;
 int tick_next_period ;
 int tick_period ;
 int update_process_times (int ) ;
 int update_wall_time () ;
 int user_mode (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void tick_periodic(int cpu)
{
 if (tick_do_timer_cpu == cpu) {
  write_seqlock(&jiffies_lock);


  tick_next_period = ktime_add(tick_next_period, tick_period);

  do_timer(1);
  write_sequnlock(&jiffies_lock);
  update_wall_time();
 }

 update_process_times(user_mode(get_irq_regs()));
 profile_tick(CPU_PROFILING);
}
