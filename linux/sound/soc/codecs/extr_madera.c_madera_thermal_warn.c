
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int dev; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MADERA_OUT4L_ENA ;
 int MADERA_OUT4R_ENA ;
 int MADERA_OUTPUT_ENABLES_1 ;
 int dev_alert (int ,char*) ;
 int dev_crit (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int madera_check_speaker_overheat (struct madera*,int*,int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static irqreturn_t madera_thermal_warn(int irq, void *data)
{
 struct madera *madera = data;
 bool warn, shutdown;
 int ret;

 ret = madera_check_speaker_overheat(madera, &warn, &shutdown);
 if (ret || shutdown) {
  dev_crit(madera->dev, "Thermal shutdown\n");
  ret = regmap_update_bits(madera->regmap,
      MADERA_OUTPUT_ENABLES_1,
      MADERA_OUT4L_ENA |
      MADERA_OUT4R_ENA, 0);
  if (ret != 0)
   dev_crit(madera->dev,
     "Failed to disable speaker outputs: %d\n",
     ret);
 } else if (warn) {
  dev_alert(madera->dev, "Thermal warning\n");
 } else {
  dev_info(madera->dev, "Spurious thermal warning\n");
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
