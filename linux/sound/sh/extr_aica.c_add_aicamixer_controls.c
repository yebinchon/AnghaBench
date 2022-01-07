
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_aica {int card; } ;


 int snd_aica_pcmswitch_control ;
 int snd_aica_pcmvolume_control ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_card_aica*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int add_aicamixer_controls(struct snd_card_aica *dreamcastcard)
{
 int err;
 err = snd_ctl_add
     (dreamcastcard->card,
      snd_ctl_new1(&snd_aica_pcmvolume_control, dreamcastcard));
 if (unlikely(err < 0))
  return err;
 err = snd_ctl_add
     (dreamcastcard->card,
      snd_ctl_new1(&snd_aica_pcmswitch_control, dreamcastcard));
 if (unlikely(err < 0))
  return err;
 return 0;
}
