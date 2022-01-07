
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt5677_priv {int irq_lock; int dev; int regmap; int domain; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int status_mask; int polarity_mask; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RT5677_IRQ_CTRL1 ;
 int RT5677_IRQ_NUM ;
 int dev_err (int ,char*,int) ;
 int handle_nested_irq (int) ;
 int irq_find_mapping (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 TYPE_1__* rt5677_irq_descs ;

__attribute__((used)) static irqreturn_t rt5677_irq(int unused, void *data)
{
 struct rt5677_priv *rt5677 = data;
 int ret = 0, loop, i, reg_irq, virq;
 bool irq_fired = 0;

 mutex_lock(&rt5677->irq_lock);
 for (loop = 0; loop < 20; loop++) {

  ret = regmap_read(rt5677->regmap, RT5677_IRQ_CTRL1, &reg_irq);
  if (ret) {
   dev_err(rt5677->dev, "failed reading IRQ status: %d\n",
    ret);
   goto exit;
  }

  irq_fired = 0;
  for (i = 0; i < RT5677_IRQ_NUM; i++) {
   if (reg_irq & rt5677_irq_descs[i].status_mask) {
    irq_fired = 1;
    virq = irq_find_mapping(rt5677->domain, i);
    if (virq)
     handle_nested_irq(virq);




    reg_irq ^= rt5677_irq_descs[i].polarity_mask;
   }
  }
  if (!irq_fired)
   goto exit;

  ret = regmap_write(rt5677->regmap, RT5677_IRQ_CTRL1, reg_irq);
  if (ret) {
   dev_err(rt5677->dev, "failed updating IRQ status: %d\n",
    ret);
   goto exit;
  }
 }
exit:
 mutex_unlock(&rt5677->irq_lock);
 if (irq_fired)
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
