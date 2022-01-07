
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cmi8330 {scalar_t__ type; int sb; int wss; } ;
struct snd_card {int mixername; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ CMI8329 ;
 int cmi8330_add_sb_mixers (int ) ;
 int * snd_cmi8330_controls ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_cmi8330_mixer(struct snd_card *card, struct snd_cmi8330 *acard)
{
 unsigned int idx;
 int err;

 strcpy(card->mixername, (acard->type == CMI8329) ? "CMI8329" : "CMI8330/C3D");

 for (idx = 0; idx < ARRAY_SIZE(snd_cmi8330_controls); idx++) {
  err = snd_ctl_add(card,
    snd_ctl_new1(&snd_cmi8330_controls[idx],
          acard->wss));
  if (err < 0)
   return err;
 }





 return 0;
}
