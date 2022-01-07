
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_timer (unsigned long) ;
 int jiffies_lock ;
 int update_wall_time () ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void xtime_update(unsigned long ticks)
{
 write_seqlock(&jiffies_lock);
 do_timer(ticks);
 write_sequnlock(&jiffies_lock);
 update_wall_time();
}
