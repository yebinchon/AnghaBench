
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int reg_check_channels () ;
 int reg_indoor_lock ;
 int reg_is_indoor ;
 scalar_t__ reg_is_indoor_portid ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void regulatory_netlink_notify(u32 portid)
{
 spin_lock(&reg_indoor_lock);

 if (reg_is_indoor_portid != portid) {
  spin_unlock(&reg_indoor_lock);
  return;
 }

 reg_is_indoor = 0;
 reg_is_indoor_portid = 0;

 spin_unlock(&reg_indoor_lock);

 reg_check_channels();
}
