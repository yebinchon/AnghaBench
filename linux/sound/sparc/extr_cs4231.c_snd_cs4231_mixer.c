
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cs4231 {TYPE_1__* pcm; } ;
struct snd_card {int mixername; struct snd_cs4231* private_data; } ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int * snd_cs4231_controls ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_cs4231*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_cs4231_mixer(struct snd_card *card)
{
 struct snd_cs4231 *chip = card->private_data;
 int err, idx;

 if (snd_BUG_ON(!chip || !chip->pcm))
  return -EINVAL;

 strcpy(card->mixername, chip->pcm->name);

 for (idx = 0; idx < ARRAY_SIZE(snd_cs4231_controls); idx++) {
  err = snd_ctl_add(card,
     snd_ctl_new1(&snd_cs4231_controls[idx], chip));
  if (err < 0)
   return err;
 }
 return 0;
}
