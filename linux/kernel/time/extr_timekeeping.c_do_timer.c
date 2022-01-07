
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calc_global_load (unsigned long) ;
 int jiffies_64 ;

void do_timer(unsigned long ticks)
{
 jiffies_64 += ticks;
 calc_global_load(ticks);
}
