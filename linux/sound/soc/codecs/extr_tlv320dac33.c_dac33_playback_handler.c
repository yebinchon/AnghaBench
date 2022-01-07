
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int fifo_mode; int nsample; int lock; int t_stamp2; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;




 int DAC33_NSAMPLE_MSB ;
 int DAC33_THRREG (int ) ;
 int dac33_write16 (struct snd_soc_component*,int ,int ) ;
 int dev_warn (int ,char*,int) ;
 int ktime_get () ;
 int ktime_to_us (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void dac33_playback_handler(struct tlv320dac33_priv *dac33)
{
 struct snd_soc_component *component = dac33->component;
 unsigned long flags;

 switch (dac33->fifo_mode) {
 case 129:

  spin_lock_irqsave(&dac33->lock, flags);
  dac33->t_stamp2 = ktime_to_us(ktime_get());
  spin_unlock_irqrestore(&dac33->lock, flags);

  dac33_write16(component, DAC33_NSAMPLE_MSB,
    DAC33_THRREG(dac33->nsample));
  break;
 case 128:

  break;
 default:
  dev_warn(component->dev, "Unhandled FIFO mode: %d\n",
       dac33->fifo_mode);
  break;
 }
}
