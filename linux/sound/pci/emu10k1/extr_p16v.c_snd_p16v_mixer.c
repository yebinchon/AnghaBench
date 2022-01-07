
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {struct snd_card* card; } ;
struct snd_card {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int * p16v_mixer_controls ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_emu10k1*) ;

int snd_p16v_mixer(struct snd_emu10k1 *emu)
{
 int i, err;
        struct snd_card *card = emu->card;

 for (i = 0; i < ARRAY_SIZE(p16v_mixer_controls); i++) {
  if ((err = snd_ctl_add(card, snd_ctl_new1(&p16v_mixer_controls[i],
         emu))) < 0)
   return err;
 }
        return 0;
}
