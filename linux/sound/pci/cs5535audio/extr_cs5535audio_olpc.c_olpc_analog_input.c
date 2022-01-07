
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int AC97_AD_HPFD_SHIFT ;
 int AC97_AD_TEST2 ;
 int OLPC_GPIO_MIC_AC ;
 int dev_err (int ,char*,int) ;
 int gpio_set_value (int ,int) ;
 int machine_is_olpc () ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

void olpc_analog_input(struct snd_ac97 *ac97, int on)
{
 int err;

 if (!machine_is_olpc())
  return;


 err = snd_ac97_update_bits(ac97, AC97_AD_TEST2,
   1 << AC97_AD_HPFD_SHIFT, on << AC97_AD_HPFD_SHIFT);
 if (err < 0) {
  dev_err(ac97->bus->card->dev,
   "setting High Pass Filter - %d\n", err);
  return;
 }


 gpio_set_value(OLPC_GPIO_MIC_AC, on);
}
