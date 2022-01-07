
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct i2c_client {scalar_t__ irq; } ;


 int WM8996_IM_IRQ ;
 int WM8996_INTERRUPT_CONTROL ;
 int free_irq (scalar_t__,struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static void wm8996_remove(struct snd_soc_component *component)
{
 struct i2c_client *i2c = to_i2c_client(component->dev);

 snd_soc_component_update_bits(component, WM8996_INTERRUPT_CONTROL,
       WM8996_IM_IRQ, WM8996_IM_IRQ);

 if (i2c->irq)
  free_irq(i2c->irq, component);
}
