
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_crit (int ,char*) ;

__attribute__((used)) static irqreturn_t wm8994_temp_shut(int irq, void *data)
{
 struct snd_soc_component *component = data;

 dev_crit(component->dev, "Thermal shutdown\n");

 return IRQ_HANDLED;
}
