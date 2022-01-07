
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {scalar_t__ fifo_mode; int work; int lock; int t_stamp1; } ;
struct snd_soc_component {int dummy; } ;
typedef int irqreturn_t ;


 scalar_t__ DAC33_FIFO_MODE7 ;
 int IRQ_HANDLED ;
 int ktime_get () ;
 int ktime_to_us (int ) ;
 int schedule_work (int *) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t dac33_interrupt_handler(int irq, void *dev)
{
 struct snd_soc_component *component = dev;
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 unsigned long flags;

 spin_lock_irqsave(&dac33->lock, flags);
 dac33->t_stamp1 = ktime_to_us(ktime_get());
 spin_unlock_irqrestore(&dac33->lock, flags);


 if (dac33->fifo_mode != DAC33_FIFO_MODE7)
  schedule_work(&dac33->work);

 return IRQ_HANDLED;
}
