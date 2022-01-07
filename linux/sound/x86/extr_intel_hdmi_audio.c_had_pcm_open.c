
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct TYPE_2__ {int substream_refcount; struct snd_pcm_substream* substream; } ;
struct snd_intelhad {int dev; int had_spinlock; TYPE_1__ stream_info; } ;


 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int had_pcm_hardware ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 struct snd_intelhad* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int had_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_intelhad *intelhaddata;
 struct snd_pcm_runtime *runtime;
 int retval;

 intelhaddata = snd_pcm_substream_chip(substream);
 runtime = substream->runtime;

 pm_runtime_get_sync(intelhaddata->dev);


 runtime->hw = had_pcm_hardware;

 retval = snd_pcm_hw_constraint_integer(runtime,
    SNDRV_PCM_HW_PARAM_PERIODS);
 if (retval < 0)
  goto error;




 retval = snd_pcm_hw_constraint_step(substream->runtime, 0,
   SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 64);
 if (retval < 0)
  goto error;

 retval = snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 if (retval < 0)
  goto error;


 spin_lock_irq(&intelhaddata->had_spinlock);
 intelhaddata->stream_info.substream = substream;
 intelhaddata->stream_info.substream_refcount++;
 spin_unlock_irq(&intelhaddata->had_spinlock);

 return retval;
 error:
 pm_runtime_mark_last_busy(intelhaddata->dev);
 pm_runtime_put_autosuspend(intelhaddata->dev);
 return retval;
}
