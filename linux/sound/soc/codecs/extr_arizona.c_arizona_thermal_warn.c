
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; int regmap; } ;
typedef int irqreturn_t ;


 int ARIZONA_INTERRUPT_RAW_STATUS_3 ;
 unsigned int ARIZONA_SPK_OVERHEAT_WARN_STS ;
 int IRQ_HANDLED ;
 int dev_crit (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t arizona_thermal_warn(int irq, void *data)
{
 struct arizona *arizona = data;
 unsigned int val;
 int ret;

 ret = regmap_read(arizona->regmap, ARIZONA_INTERRUPT_RAW_STATUS_3,
     &val);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to read thermal status: %d\n",
   ret);
 } else if (val & ARIZONA_SPK_OVERHEAT_WARN_STS) {
  dev_crit(arizona->dev, "Thermal warning\n");
 }

 return IRQ_HANDLED;
}
