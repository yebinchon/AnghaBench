
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm {int nonatomic; int name; scalar_t__ info_flags; struct snd_mixart* private_data; } ;
struct snd_mixart {int chip_idx; struct snd_pcm* pcm_dig; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int MIXART_CAPTURE_STREAMS ;
 int MIXART_PCM_DIGITAL ;
 int MIXART_PLAYBACK_STREAMS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*,int) ;
 int preallocate_buffers (struct snd_mixart*,struct snd_pcm*) ;
 int snd_mixart_capture_ops ;
 int snd_mixart_playback_ops ;
 int snd_pcm_new (TYPE_1__*,char*,int ,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int sprintf (char*,char*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_mixart_pcm_digital(struct snd_mixart *chip)
{
 int err;
 struct snd_pcm *pcm;
 char name[32];

 sprintf(name, "miXart AES/EBU %d", chip->chip_idx);
 if ((err = snd_pcm_new(chip->card, name, MIXART_PCM_DIGITAL,
          MIXART_PLAYBACK_STREAMS,
          MIXART_CAPTURE_STREAMS, &pcm)) < 0) {
  dev_err(chip->card->dev,
   "cannot create the digital pcm %d\n", chip->chip_idx);
  return err;
 }

 pcm->private_data = chip;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_mixart_playback_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_mixart_capture_ops);

 pcm->info_flags = 0;
 pcm->nonatomic = 1;
 strcpy(pcm->name, name);

 preallocate_buffers(chip, pcm);

 chip->pcm_dig = pcm;
 return 0;
}
