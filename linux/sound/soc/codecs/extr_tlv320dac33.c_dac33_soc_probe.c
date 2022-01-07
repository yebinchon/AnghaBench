
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int irq; int work; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 int IRQF_TRIGGER_RISING ;
 int dac33_hard_power (struct snd_soc_component*,int) ;
 int dac33_interrupt_handler ;
 int dac33_mode_snd_controls ;
 int dac33_read_id (struct snd_soc_component*) ;
 int dac33_work ;
 int dev_err (int ,char*,int,...) ;
 int request_irq (int,int ,int ,int ,struct snd_soc_component*) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_soc_probe(struct snd_soc_component *component)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 dac33->component = component;


 ret = dac33_hard_power(component, 1);
 if (ret != 0) {
  dev_err(component->dev, "Failed to power up component: %d\n", ret);
  goto err_power;
 }
 ret = dac33_read_id(component);
 dac33_hard_power(component, 0);

 if (ret < 0) {
  dev_err(component->dev, "Failed to read chip ID: %d\n", ret);
  ret = -ENODEV;
  goto err_power;
 }


 if (dac33->irq >= 0) {
  ret = request_irq(dac33->irq, dac33_interrupt_handler,
      IRQF_TRIGGER_RISING,
      component->name, component);
  if (ret < 0) {
   dev_err(component->dev, "Could not request IRQ%d (%d)\n",
      dac33->irq, ret);
   dac33->irq = -1;
  }
  if (dac33->irq != -1) {
   INIT_WORK(&dac33->work, dac33_work);
  }
 }


 if (dac33->irq >= 0)
  snd_soc_add_component_controls(component, dac33_mode_snd_controls,
         ARRAY_SIZE(dac33_mode_snd_controls));

err_power:
 return ret;
}
