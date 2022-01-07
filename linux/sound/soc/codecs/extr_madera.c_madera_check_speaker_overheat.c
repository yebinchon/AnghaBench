
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int dev; int regmap; } ;


 int MADERA_IRQ1_RAW_STATUS_15 ;
 unsigned int MADERA_SPK_OVERHEAT_STS1 ;
 unsigned int MADERA_SPK_OVERHEAT_WARN_STS1 ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int madera_check_speaker_overheat(struct madera *madera,
      bool *warn, bool *shutdown)
{
 unsigned int val;
 int ret;

 ret = regmap_read(madera->regmap, MADERA_IRQ1_RAW_STATUS_15, &val);
 if (ret) {
  dev_err(madera->dev, "Failed to read thermal status: %d\n",
   ret);
  return ret;
 }

 *warn = val & MADERA_SPK_OVERHEAT_WARN_STS1;
 *shutdown = val & MADERA_SPK_OVERHEAT_STS1;

 return 0;
}
