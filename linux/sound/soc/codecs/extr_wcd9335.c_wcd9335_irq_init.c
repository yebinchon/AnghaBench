
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wcd9335_codec {int intr1; TYPE_1__* dev; int irq_data; int regmap; } ;
struct TYPE_3__ {int of_node; } ;


 int EPROBE_DEFER ;
 int IRQF_TRIGGER_HIGH ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_regmap_add_irq_chip (TYPE_1__*,int ,int,int ,int ,int *,int *) ;
 int of_irq_get_byname (int ,char*) ;
 int wcd9335_regmap_irq1_chip ;

__attribute__((used)) static int wcd9335_irq_init(struct wcd9335_codec *wcd)
{
 int ret;






 wcd->intr1 = of_irq_get_byname(wcd->dev->of_node, "intr1");
 if (wcd->intr1 < 0) {
  if (wcd->intr1 != -EPROBE_DEFER)
   dev_err(wcd->dev, "Unable to configure IRQ\n");

  return wcd->intr1;
 }

 ret = devm_regmap_add_irq_chip(wcd->dev, wcd->regmap, wcd->intr1,
     IRQF_TRIGGER_HIGH, 0,
     &wcd9335_regmap_irq1_chip, &wcd->irq_data);
 if (ret)
  dev_err(wcd->dev, "Failed to register IRQ chip: %d\n", ret);

 return ret;
}
