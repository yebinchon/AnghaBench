
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {scalar_t__ reset_jiffies; } ;
typedef scalar_t__ s64 ;


 int ERESTARTSYS ;
 scalar_t__ HZ ;
 scalar_t__ get_jiffies_64 () ;
 scalar_t__ schedule_timeout_interruptible (scalar_t__) ;

__attribute__((used)) static int wait_isoch_resource_delay_after_bus_reset(struct fw_card *card)
{
 for (;;) {
  s64 delay = (card->reset_jiffies + HZ) - get_jiffies_64();
  if (delay <= 0)
   return 0;
  if (schedule_timeout_interruptible(delay) > 0)
   return -ERESTARTSYS;
 }
}
