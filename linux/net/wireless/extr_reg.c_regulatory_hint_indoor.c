
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

int regulatory_hint_indoor(bool is_indoor, u32 portid)
{
 spin_lock(&reg_indoor_lock);
 reg_is_indoor = is_indoor;
 if (reg_is_indoor) {
  if (!reg_is_indoor_portid)
   reg_is_indoor_portid = portid;
 } else {
  reg_is_indoor_portid = 0;
 }

 spin_unlock(&reg_indoor_lock);

 if (!is_indoor)
  reg_check_channels();

 return 0;
}
