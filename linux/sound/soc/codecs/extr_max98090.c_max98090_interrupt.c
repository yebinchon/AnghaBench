
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct max98090_priv {int jack_work; int pll_work; int regmap; struct snd_soc_component* component; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int M98090_CLD_MASK ;
 unsigned int M98090_DRCACT_MASK ;
 unsigned int M98090_DRCCLP_MASK ;
 unsigned int M98090_JDET_MASK ;
 int M98090_REG_DEVICE_STATUS ;
 int M98090_REG_INTERRUPT_S ;
 unsigned int M98090_SLD_MASK ;
 unsigned int M98090_ULK_MASK ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 int msecs_to_jiffies (int) ;
 int pm_wakeup_event (int ,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int schedule_work (int *) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t max98090_interrupt(int irq, void *data)
{
 struct max98090_priv *max98090 = data;
 struct snd_soc_component *component = max98090->component;
 int ret;
 unsigned int mask;
 unsigned int active;


 if (component == ((void*)0))
  return IRQ_NONE;

 dev_dbg(component->dev, "***** max98090_interrupt *****\n");

 ret = regmap_read(max98090->regmap, M98090_REG_INTERRUPT_S, &mask);

 if (ret != 0) {
  dev_err(component->dev,
   "failed to read M98090_REG_INTERRUPT_S: %d\n",
   ret);
  return IRQ_NONE;
 }

 ret = regmap_read(max98090->regmap, M98090_REG_DEVICE_STATUS, &active);

 if (ret != 0) {
  dev_err(component->dev,
   "failed to read M98090_REG_DEVICE_STATUS: %d\n",
   ret);
  return IRQ_NONE;
 }

 dev_dbg(component->dev, "active=0x%02x mask=0x%02x -> active=0x%02x\n",
  active, mask, active & mask);

 active &= mask;

 if (!active)
  return IRQ_NONE;

 if (active & M98090_CLD_MASK)
  dev_err(component->dev, "M98090_CLD_MASK\n");

 if (active & M98090_SLD_MASK)
  dev_dbg(component->dev, "M98090_SLD_MASK\n");

 if (active & M98090_ULK_MASK) {
  dev_dbg(component->dev, "M98090_ULK_MASK\n");
  schedule_work(&max98090->pll_work);
 }

 if (active & M98090_JDET_MASK) {
  dev_dbg(component->dev, "M98090_JDET_MASK\n");

  pm_wakeup_event(component->dev, 100);

  queue_delayed_work(system_power_efficient_wq,
       &max98090->jack_work,
       msecs_to_jiffies(100));
 }

 if (active & M98090_DRCACT_MASK)
  dev_dbg(component->dev, "M98090_DRCACT_MASK\n");

 if (active & M98090_DRCCLP_MASK)
  dev_err(component->dev, "M98090_DRCCLP_MASK\n");

 return IRQ_HANDLED;
}
