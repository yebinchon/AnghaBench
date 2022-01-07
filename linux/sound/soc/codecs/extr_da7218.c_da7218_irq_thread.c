
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;
typedef int irqreturn_t ;


 int DA7218_EVENT ;
 int DA7218_HPLDET_JACK_EVENT_MASK ;
 int DA7218_LVL_DET_EVENT_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int da7218_hpldet_irq (struct snd_soc_component*) ;
 int da7218_micldet_irq (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static irqreturn_t da7218_irq_thread(int irq, void *data)
{
 struct snd_soc_component *component = data;
 u8 status;


 status = snd_soc_component_read32(component, DA7218_EVENT);
 if (!status)
  return IRQ_NONE;


 if (status & DA7218_LVL_DET_EVENT_MASK)
  da7218_micldet_irq(component);


 if (status & DA7218_HPLDET_JACK_EVENT_MASK)
  da7218_hpldet_irq(component);


 snd_soc_component_write(component, DA7218_EVENT, status);

 return IRQ_HANDLED;
}
