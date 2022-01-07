
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_harmony {struct snd_card* card; } ;
struct snd_card {int mixername; } ;


 int EINVAL ;
 int HARMONY_CONTROLS ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_harmony*) ;
 int * snd_harmony_controls ;
 int snd_harmony_mixer_reset (struct snd_harmony*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int
snd_harmony_mixer_init(struct snd_harmony *h)
{
 struct snd_card *card;
 int idx, err;

 if (snd_BUG_ON(!h))
  return -EINVAL;
 card = h->card;
 strcpy(card->mixername, "Harmony Gain control interface");

 for (idx = 0; idx < HARMONY_CONTROLS; idx++) {
  err = snd_ctl_add(card,
      snd_ctl_new1(&snd_harmony_controls[idx], h));
  if (err < 0)
   return err;
 }

 snd_harmony_mixer_reset(h);

 return 0;
}
