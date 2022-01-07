
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
 int ML_LCTL_SCF_MASK ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int intel_get_lctl_scf (struct azx*) ;
 int intel_ml_lctl_set_power (struct azx*,int) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void intel_init_lctl(struct azx *chip)
{
 struct hdac_bus *bus = azx_bus(chip);
 u32 val;
 int ret;


 val = readl(bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCTL);

 if ((val & ML_LCTL_SCF_MASK) != 0)
  return;





 if (((val & AZX_MLCTL_SPA) >> AZX_MLCTL_SPA_SHIFT) !=
  ((val & AZX_MLCTL_CPA) >> AZX_MLCTL_CPA_SHIFT))
  return;


 ret = intel_ml_lctl_set_power(chip, 0);
 udelay(100);
 if (ret)
  goto set_spa;


 val &= ~ML_LCTL_SCF_MASK;
 val |= intel_get_lctl_scf(chip);
 writel(val, bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCTL);

set_spa:

 intel_ml_lctl_set_power(chip, 1);
 udelay(100);
}
