
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct pmac_tumbler {scalar_t__ headphone_irq; scalar_t__ lineout_irq; int i2c; int hp_detect; int hp_mute; int amp_mute; int audio_reset; } ;


 int free_irq (scalar_t__,struct snd_pmac*) ;
 int kfree (struct pmac_tumbler*) ;
 int snd_pmac_keywest_cleanup (int *) ;
 int tumbler_gpio_free (int *) ;

__attribute__((used)) static void tumbler_cleanup(struct snd_pmac *chip)
{
 struct pmac_tumbler *mix = chip->mixer_data;
 if (! mix)
  return;

 if (mix->headphone_irq >= 0)
  free_irq(mix->headphone_irq, chip);
 if (mix->lineout_irq >= 0)
  free_irq(mix->lineout_irq, chip);
 tumbler_gpio_free(&mix->audio_reset);
 tumbler_gpio_free(&mix->amp_mute);
 tumbler_gpio_free(&mix->hp_mute);
 tumbler_gpio_free(&mix->hp_detect);
 snd_pmac_keywest_cleanup(&mix->i2c);
 kfree(mix);
 chip->mixer_data = ((void*)0);
}
