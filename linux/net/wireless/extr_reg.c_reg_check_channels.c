
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_ENFORCE_GRACE_MS ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int reg_check_chans ;
 int system_power_efficient_wq ;

__attribute__((used)) static void reg_check_channels(void)
{




 mod_delayed_work(system_power_efficient_wq,
    &reg_check_chans,
    msecs_to_jiffies(REG_ENFORCE_GRACE_MS));
}
