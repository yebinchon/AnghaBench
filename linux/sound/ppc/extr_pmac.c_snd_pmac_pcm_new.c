
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cur_freqs; int cur_formats; } ;
struct TYPE_5__ {int cur_freqs; int cur_formats; } ;
struct snd_pmac {TYPE_3__* pdev; int freqs_ok; TYPE_2__ capture; TYPE_1__ playback; int formats_ok; scalar_t__ can_byte_swap; struct snd_pcm* pcm; TYPE_4__* card; scalar_t__ can_capture; } ;
struct snd_pcm {int name; int info_flags; struct snd_pmac* private_data; } ;
struct TYPE_8__ {int shortname; int driver; } ;
struct TYPE_7__ {int dev; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_FMTBIT_S16_BE ;
 int SNDRV_PCM_FMTBIT_S16_LE ;
 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int *,int,int) ;
 int snd_pcm_new (TYPE_4__*,int ,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int snd_pmac_capture_ops ;
 int snd_pmac_playback_ops ;
 int strcpy (int ,int ) ;

int snd_pmac_pcm_new(struct snd_pmac *chip)
{
 struct snd_pcm *pcm;
 int err;
 int num_captures = 1;

 if (! chip->can_capture)
  num_captures = 0;
 err = snd_pcm_new(chip->card, chip->card->driver, 0, 1, num_captures, &pcm);
 if (err < 0)
  return err;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_pmac_playback_ops);
 if (chip->can_capture)
  snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_pmac_capture_ops);

 pcm->private_data = chip;
 pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;
 strcpy(pcm->name, chip->card->shortname);
 chip->pcm = pcm;

 chip->formats_ok = SNDRV_PCM_FMTBIT_S16_BE;
 if (chip->can_byte_swap)
  chip->formats_ok |= SNDRV_PCM_FMTBIT_S16_LE;

 chip->playback.cur_formats = chip->formats_ok;
 chip->capture.cur_formats = chip->formats_ok;
 chip->playback.cur_freqs = chip->freqs_ok;
 chip->capture.cur_freqs = chip->freqs_ok;


 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           &chip->pdev->dev,
           64 * 1024, 64 * 1024);

 return 0;
}
