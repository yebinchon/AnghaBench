
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct oxygen {unsigned int interrupt_mask; int reg_lock; } ;
struct TYPE_2__ {scalar_t__ no_period_wakeup; } ;


 int OXYGEN_DMA_FLUSH ;
 int OXYGEN_INTERRUPT_MASK ;
 int oxygen_clear_bits8 (struct oxygen*,int ,unsigned int) ;
 int oxygen_set_bits8 (struct oxygen*,int ,unsigned int) ;
 unsigned int oxygen_substream_channel (struct snd_pcm_substream*) ;
 int oxygen_write16 (struct oxygen*,int ,unsigned int) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int oxygen_prepare(struct snd_pcm_substream *substream)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);
 unsigned int channel = oxygen_substream_channel(substream);
 unsigned int channel_mask = 1 << channel;

 spin_lock_irq(&chip->reg_lock);
 oxygen_set_bits8(chip, OXYGEN_DMA_FLUSH, channel_mask);
 oxygen_clear_bits8(chip, OXYGEN_DMA_FLUSH, channel_mask);

 if (substream->runtime->no_period_wakeup)
  chip->interrupt_mask &= ~channel_mask;
 else
  chip->interrupt_mask |= channel_mask;
 oxygen_write16(chip, OXYGEN_INTERRUPT_MASK, chip->interrupt_mask);
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
