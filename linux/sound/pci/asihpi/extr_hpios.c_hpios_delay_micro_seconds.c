
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int in_interrupt () ;
 int mdelay (int) ;
 int schedule_timeout_uninterruptible (int) ;
 int udelay (int) ;
 int usecs_to_jiffies (int) ;

void hpios_delay_micro_seconds(u32 num_micro_sec)
{
 if ((usecs_to_jiffies(num_micro_sec) > 1) && !in_interrupt()) {

  schedule_timeout_uninterruptible(usecs_to_jiffies
   (num_micro_sec));
 } else if (num_micro_sec <= 2000)
  udelay(num_micro_sec);
 else
  mdelay(num_micro_sec / 1000);

}
