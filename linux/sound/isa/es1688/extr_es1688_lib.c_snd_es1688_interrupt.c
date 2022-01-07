
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_es1688 {int trigger_value; int capture_substream; int playback_substream; } ;
typedef int irqreturn_t ;


 int DATA_AVAIL ;
 int ES1688P (struct snd_es1688*,int ) ;
 int IRQ_HANDLED ;
 int inb (int ) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static irqreturn_t snd_es1688_interrupt(int irq, void *dev_id)
{
 struct snd_es1688 *chip = dev_id;

 if (chip->trigger_value == 0x05)
  snd_pcm_period_elapsed(chip->playback_substream);
 if (chip->trigger_value == 0x0f)
  snd_pcm_period_elapsed(chip->capture_substream);

 inb(ES1688P(chip, DATA_AVAIL));
 return IRQ_HANDLED;
}
