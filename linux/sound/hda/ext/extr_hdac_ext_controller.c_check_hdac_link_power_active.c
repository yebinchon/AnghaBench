
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_ext_link {scalar_t__ ml_addr; } ;


 int AZX_MLCTL_CPA_SHIFT ;
 scalar_t__ AZX_REG_ML_LCTL ;
 int EIO ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int check_hdac_link_power_active(struct hdac_ext_link *link, bool enable)
{
 int timeout;
 u32 val;
 int mask = (1 << AZX_MLCTL_CPA_SHIFT);

 udelay(3);
 timeout = 150;

 do {
  val = readl(link->ml_addr + AZX_REG_ML_LCTL);
  if (enable) {
   if (((val & mask) >> AZX_MLCTL_CPA_SHIFT))
    return 0;
  } else {
   if (!((val & mask) >> AZX_MLCTL_CPA_SHIFT))
    return 0;
  }
  udelay(3);
 } while (--timeout);

 return -EIO;
}
