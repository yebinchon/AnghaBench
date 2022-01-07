
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pdacf {int ak4117; struct snd_pcm* pcm; TYPE_2__* card; } ;
struct snd_pcm {int nonatomic; TYPE_1__* streams; int name; scalar_t__ info_flags; struct snd_pdacf* private_data; } ;
struct TYPE_4__ {int shortname; } ;
struct TYPE_3__ {int substream; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int pdacf_pcm_capture_ops ;
 int snd_ak4117_build (int ,int ) ;
 int snd_pcm_new (TYPE_2__*,char*,int ,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,size_t,int *) ;
 int strcpy (int ,int ) ;

int snd_pdacf_pcm_new(struct snd_pdacf *chip)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(chip->card, "PDAudioCF", 0, 0, 1, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &pdacf_pcm_capture_ops);

 pcm->private_data = chip;
 pcm->info_flags = 0;
 pcm->nonatomic = 1;
 strcpy(pcm->name, chip->card->shortname);
 chip->pcm = pcm;

 err = snd_ak4117_build(chip->ak4117, pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
 if (err < 0)
  return err;

 return 0;
}
