
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int fifo_mode; int lock; void* mode7_us_to_lthr; void* t_stamp1; int alarm_threshold; int burst_rate; void* t_stamp2; int nsample; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int DAC33_FIFO_IRQ_MASK ;


 int DAC33_MAT ;
 int DAC33_MODE7_MARGIN ;
 int DAC33_MUT ;
 int DAC33_NSAMPLE_MSB ;
 int DAC33_PREFILL_MSB ;
 int DAC33_THRREG (int ) ;
 int SAMPLES_TO_US (int ,int ) ;
 int dac33_write (struct snd_soc_component*,int ,int ) ;
 int dac33_write16 (struct snd_soc_component*,int ,int ) ;
 int dev_warn (int ,char*,int) ;
 int ktime_get () ;
 void* ktime_to_us (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static inline void dac33_prefill_handler(struct tlv320dac33_priv *dac33)
{
 struct snd_soc_component *component = dac33->component;
 unsigned int delay;
 unsigned long flags;

 switch (dac33->fifo_mode) {
 case 129:
  dac33_write16(component, DAC33_NSAMPLE_MSB,
   DAC33_THRREG(dac33->nsample));


  spin_lock_irqsave(&dac33->lock, flags);
  dac33->t_stamp2 = ktime_to_us(ktime_get());
  dac33->t_stamp1 = dac33->t_stamp2;
  spin_unlock_irqrestore(&dac33->lock, flags);

  dac33_write16(component, DAC33_PREFILL_MSB,
    DAC33_THRREG(dac33->alarm_threshold));

  delay = SAMPLES_TO_US(dac33->burst_rate,
         dac33->alarm_threshold) + 1000;
  usleep_range(delay, delay + 500);
  dac33_write(component, DAC33_FIFO_IRQ_MASK, DAC33_MAT);
  break;
 case 128:

  spin_lock_irqsave(&dac33->lock, flags);
  dac33->t_stamp1 = ktime_to_us(ktime_get());

  dac33->t_stamp1 -= dac33->mode7_us_to_lthr;
  spin_unlock_irqrestore(&dac33->lock, flags);

  dac33_write16(component, DAC33_PREFILL_MSB,
    DAC33_THRREG(DAC33_MODE7_MARGIN));


  dac33_write(component, DAC33_FIFO_IRQ_MASK, DAC33_MUT);
  break;
 default:
  dev_warn(component->dev, "Unhandled FIFO mode: %d\n",
       dac33->fifo_mode);
  break;
 }
}
