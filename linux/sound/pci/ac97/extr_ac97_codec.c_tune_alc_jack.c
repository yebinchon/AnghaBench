
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {int id; TYPE_1__* bus; } ;
struct TYPE_2__ {int card; } ;


 int AC97_ID_ALC658D ;
 int EINVAL ;
 int ac97_err (struct snd_ac97*,char*) ;
 int snd_ac97_alc_jack_detect ;
 int snd_ac97_cnew (int *,struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int,int,int) ;
 int snd_ctl_add (int ,int ) ;

__attribute__((used)) static int tune_alc_jack(struct snd_ac97 *ac97)
{
 if ((ac97->id & 0xffffff00) != 0x414c4700) {
  ac97_err(ac97,
    "ac97_quirk ALC_JACK is only for Realtek codecs\n");
  return -EINVAL;
 }
 snd_ac97_update_bits(ac97, 0x7a, 0x20, 0x20);
 snd_ac97_update_bits(ac97, 0x7a, 0x01, 0x01);
 if (ac97->id == AC97_ID_ALC658D)
  snd_ac97_update_bits(ac97, 0x74, 0x0800, 0x0800);
 return snd_ctl_add(ac97->bus->card, snd_ac97_cnew(&snd_ac97_alc_jack_detect, ac97));
}
