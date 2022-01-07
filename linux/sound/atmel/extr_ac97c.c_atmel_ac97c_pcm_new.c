
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_hardware {int periods_min; int period_bytes_min; int buffer_bytes_max; } ;
struct snd_pcm {int name; scalar_t__ info_flags; struct atmel_ac97c* private_data; } ;
struct atmel_ac97c {struct snd_pcm* pcm; TYPE_2__* card; TYPE_1__* pdev; int ac97_bus; } ;
struct TYPE_4__ {int shortname; } ;
struct TYPE_3__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int at91_ac97_pcm_defs ;
 int atmel_ac97_capture_ops ;
 int atmel_ac97_playback_ops ;
 struct snd_pcm_hardware atmel_ac97c_hw ;
 int snd_ac97_pcm_assign (int ,int ,int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int *,int,int ) ;
 int snd_pcm_new (TYPE_2__*,int ,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int atmel_ac97c_pcm_new(struct atmel_ac97c *chip)
{
 struct snd_pcm *pcm;
 struct snd_pcm_hardware hw = atmel_ac97c_hw;
 int retval;

 retval = snd_ac97_pcm_assign(chip->ac97_bus,
         ARRAY_SIZE(at91_ac97_pcm_defs),
         at91_ac97_pcm_defs);
 if (retval)
  return retval;

 retval = snd_pcm_new(chip->card, chip->card->shortname, 0, 1, 1, &pcm);
 if (retval)
  return retval;

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &atmel_ac97_capture_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &atmel_ac97_playback_ops);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
   &chip->pdev->dev, hw.periods_min * hw.period_bytes_min,
   hw.buffer_bytes_max);

 pcm->private_data = chip;
 pcm->info_flags = 0;
 strcpy(pcm->name, chip->card->shortname);
 chip->pcm = pcm;

 return 0;
}
