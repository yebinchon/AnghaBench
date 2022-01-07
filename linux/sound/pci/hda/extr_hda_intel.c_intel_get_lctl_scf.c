
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hdac_bus {scalar_t__ mlcap; } ;
struct azx {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ AZX_ML_BASE ;
 scalar_t__ AZX_REG_ML_LCAP ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int dev_warn (int ,char*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int intel_get_lctl_scf(struct azx *chip)
{
 struct hdac_bus *bus = azx_bus(chip);
 static int preferred_bits[] = { 2, 3, 1, 4, 5 };
 u32 val, t;
 int i;

 val = readl(bus->mlcap + AZX_ML_BASE + AZX_REG_ML_LCAP);

 for (i = 0; i < ARRAY_SIZE(preferred_bits); i++) {
  t = preferred_bits[i];
  if (val & (1 << t))
   return t;
 }

 dev_warn(chip->card->dev, "set audio clock frequency to 6MHz");
 return 0;
}
