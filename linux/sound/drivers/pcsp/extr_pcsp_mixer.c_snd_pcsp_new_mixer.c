
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcsp {struct snd_card* card; } ;
struct snd_card {int mixername; } ;


 int ARRAY_SIZE (int ) ;
 int snd_pcsp_controls_pcm ;
 int snd_pcsp_controls_spkr ;
 int snd_pcsp_ctls_add (struct snd_pcsp*,int ,int ) ;
 int strcpy (int ,char*) ;

int snd_pcsp_new_mixer(struct snd_pcsp *chip, int nopcm)
{
 int err;
 struct snd_card *card = chip->card;

 if (!nopcm) {
  err = snd_pcsp_ctls_add(chip, snd_pcsp_controls_pcm,
   ARRAY_SIZE(snd_pcsp_controls_pcm));
  if (err < 0)
   return err;
 }
 err = snd_pcsp_ctls_add(chip, snd_pcsp_controls_spkr,
  ARRAY_SIZE(snd_pcsp_controls_spkr));
 if (err < 0)
  return err;

 strcpy(card->mixername, "PC-Speaker");

 return 0;
}
