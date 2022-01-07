
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdac_bus {scalar_t__ mlcap; } ;
struct azx {int dummy; } ;


 int AZX_MLCTL_CPA ;
 int AZX_MLCTL_CPA_SHIFT ;
 int AZX_MLCTL_SPA ;
 int AZX_MLCTL_SPA_SHIFT ;
 scalar_t__ AZX_ML_BASE ;
 scalar_t__ AZX_REG_ML_LCTL ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int intel_ml_lctl_set_power(struct azx *chip, int state)
{
 struct hdac_bus *bus = azx_bus(chip);
 u32 val;
 int timeout;





 val = readl(bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCTL);
 val &= ~AZX_MLCTL_SPA;
 val |= state << AZX_MLCTL_SPA_SHIFT;
 writel(val, bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCTL);

 timeout = 50;
 while (timeout) {
  if (((readl(bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCTL)) &
      AZX_MLCTL_CPA) == (state << AZX_MLCTL_CPA_SHIFT))
   return 0;
  timeout--;
  udelay(10);
 }

 return -1;
}
