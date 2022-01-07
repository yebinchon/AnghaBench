
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viadev {size_t direction; int * substream; } ;
struct via_rate_lock {scalar_t__ rate; int lock; int used; } ;
struct via82xx {int ac97; struct via_rate_lock* rates; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;


 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_PCM_LFE_DAC_RATE ;
 int AC97_PCM_LR_ADC_RATE ;
 int AC97_PCM_SURR_DAC_RATE ;
 int snd_ac97_update_power (int ,int ,int ) ;
 struct via82xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_via82xx_pcm_close(struct snd_pcm_substream *substream)
{
 struct via82xx *chip = snd_pcm_substream_chip(substream);
 struct viadev *viadev = substream->runtime->private_data;
 struct via_rate_lock *ratep;


 ratep = &chip->rates[viadev->direction];
 spin_lock_irq(&ratep->lock);
 ratep->used--;
 if (! ratep->used)
  ratep->rate = 0;
 spin_unlock_irq(&ratep->lock);
 if (! ratep->rate) {
  if (! viadev->direction) {
   snd_ac97_update_power(chip->ac97,
           AC97_PCM_FRONT_DAC_RATE, 0);
   snd_ac97_update_power(chip->ac97,
           AC97_PCM_SURR_DAC_RATE, 0);
   snd_ac97_update_power(chip->ac97,
           AC97_PCM_LFE_DAC_RATE, 0);
  } else
   snd_ac97_update_power(chip->ac97,
           AC97_PCM_LR_ADC_RATE, 0);
 }
 viadev->substream = ((void*)0);
 return 0;
}
