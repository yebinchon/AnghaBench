
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_GENERIC_CMOS_UPDATE ;
 int CONFIG_RTC_SYSTOHC ;
 scalar_t__ IS_ENABLED (int ) ;
 int ntp_synced () ;
 int queue_delayed_work (int ,int *,int ) ;
 int sync_work ;
 int system_power_efficient_wq ;

void ntp_notify_cmos_timer(void)
{
 if (!ntp_synced())
  return;

 if (IS_ENABLED(CONFIG_GENERIC_CMOS_UPDATE) ||
     IS_ENABLED(CONFIG_RTC_SYSTOHC))
  queue_delayed_work(system_power_efficient_wq, &sync_work, 0);
}
