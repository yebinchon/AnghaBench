
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sgio2audio {int card; } ;
struct snd_pcm {int name; struct snd_sgio2audio* private_data; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_sgio2audio_capture_ops ;
 int snd_sgio2audio_playback1_ops ;
 int snd_sgio2audio_playback2_ops ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_sgio2audio_new_pcm(struct snd_sgio2audio *chip)
{
 struct snd_pcm *pcm;
 int err;


 err = snd_pcm_new(chip->card, "SGI O2 Audio", 0, 1, 1, &pcm);
 if (err < 0)
  return err;

 pcm->private_data = chip;
 strcpy(pcm->name, "SGI O2 DAC1");


 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_sgio2audio_playback1_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE,
   &snd_sgio2audio_capture_ops);


 err = snd_pcm_new(chip->card, "SGI O2 Audio", 1, 1, 0, &pcm);
 if (err < 0)
  return err;

 pcm->private_data = chip;
 strcpy(pcm->name, "SGI O2 DAC2");


 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   &snd_sgio2audio_playback2_ops);

 return 0;
}
