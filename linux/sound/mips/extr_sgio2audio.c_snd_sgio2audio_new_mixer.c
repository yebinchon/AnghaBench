
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sgio2audio {int card; } ;


 int sgio2audio_ctrl_cd ;
 int sgio2audio_ctrl_line ;
 int sgio2audio_ctrl_mic ;
 int sgio2audio_ctrl_pcm0 ;
 int sgio2audio_ctrl_pcm1 ;
 int sgio2audio_ctrl_reclevel ;
 int sgio2audio_ctrl_recsource ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_sgio2audio*) ;

__attribute__((used)) static int snd_sgio2audio_new_mixer(struct snd_sgio2audio *chip)
{
 int err;

 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&sgio2audio_ctrl_pcm0, chip));
 if (err < 0)
  return err;

 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&sgio2audio_ctrl_pcm1, chip));
 if (err < 0)
  return err;

 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&sgio2audio_ctrl_reclevel, chip));
 if (err < 0)
  return err;

 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&sgio2audio_ctrl_recsource, chip));
 if (err < 0)
  return err;
 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&sgio2audio_ctrl_line, chip));
 if (err < 0)
  return err;

 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&sgio2audio_ctrl_cd, chip));
 if (err < 0)
  return err;

 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&sgio2audio_ctrl_mic, chip));
 if (err < 0)
  return err;

 return 0;
}
