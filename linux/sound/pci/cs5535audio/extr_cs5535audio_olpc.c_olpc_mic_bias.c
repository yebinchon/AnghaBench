
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int AC97_AD_MISC ;
 int AC97_AD_VREFD_SHIFT ;
 int dev_err (int ,char*,int) ;
 int machine_is_olpc () ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

void olpc_mic_bias(struct snd_ac97 *ac97, int on)
{
 int err;

 if (!machine_is_olpc())
  return;

 on = on ? 0 : 1;
 err = snd_ac97_update_bits(ac97, AC97_AD_MISC,
   1 << AC97_AD_VREFD_SHIFT, on << AC97_AD_VREFD_SHIFT);
 if (err < 0)
  dev_err(ac97->bus->card->dev, "setting MIC Bias - %d\n", err);
}
