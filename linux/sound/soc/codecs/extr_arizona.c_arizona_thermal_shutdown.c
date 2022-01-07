
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; int regmap; } ;
typedef int irqreturn_t ;


 int ARIZONA_INTERRUPT_RAW_STATUS_3 ;
 int ARIZONA_OUT4L_ENA ;
 int ARIZONA_OUT4R_ENA ;
 int ARIZONA_OUTPUT_ENABLES_1 ;
 unsigned int ARIZONA_SPK_OVERHEAT_STS ;
 int IRQ_HANDLED ;
 int dev_crit (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static irqreturn_t arizona_thermal_shutdown(int irq, void *data)
{
 struct arizona *arizona = data;
 unsigned int val;
 int ret;

 ret = regmap_read(arizona->regmap, ARIZONA_INTERRUPT_RAW_STATUS_3,
     &val);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to read thermal status: %d\n",
   ret);
 } else if (val & ARIZONA_SPK_OVERHEAT_STS) {
  dev_crit(arizona->dev, "Thermal shutdown\n");
  ret = regmap_update_bits(arizona->regmap,
      ARIZONA_OUTPUT_ENABLES_1,
      ARIZONA_OUT4L_ENA |
      ARIZONA_OUT4R_ENA, 0);
  if (ret != 0)
   dev_crit(arizona->dev,
     "Failed to disable speaker outputs: %d\n",
     ret);
 }

 return IRQ_HANDLED;
}
