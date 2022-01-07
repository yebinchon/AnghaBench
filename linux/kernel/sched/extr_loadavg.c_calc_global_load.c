
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXP_1 ;
 int EXP_15 ;
 int EXP_5 ;
 long FIXED_1 ;
 scalar_t__ LOAD_FREQ ;
 unsigned long READ_ONCE (int ) ;
 int WRITE_ONCE (int ,scalar_t__) ;
 int atomic_long_add (long,int *) ;
 long atomic_long_read (int *) ;
 int * avenrun ;
 int calc_global_nohz () ;
 int calc_load (int ,int ,long) ;
 long calc_load_nohz_fold () ;
 int calc_load_tasks ;
 int calc_load_update ;
 int jiffies ;
 scalar_t__ time_before (int ,unsigned long) ;

void calc_global_load(unsigned long ticks)
{
 unsigned long sample_window;
 long active, delta;

 sample_window = READ_ONCE(calc_load_update);
 if (time_before(jiffies, sample_window + 10))
  return;




 delta = calc_load_nohz_fold();
 if (delta)
  atomic_long_add(delta, &calc_load_tasks);

 active = atomic_long_read(&calc_load_tasks);
 active = active > 0 ? active * FIXED_1 : 0;

 avenrun[0] = calc_load(avenrun[0], EXP_1, active);
 avenrun[1] = calc_load(avenrun[1], EXP_5, active);
 avenrun[2] = calc_load(avenrun[2], EXP_15, active);

 WRITE_ONCE(calc_load_update, sample_window + LOAD_FREQ);





 calc_global_nohz();
}
