
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dtrace_is_enabled; int dtrace_draining; int trace_sleep; int dev; } ;


 int SNDRV_PCM_TRIGGER_STOP ;
 int dev_err (int ,char*,int) ;
 int snd_sof_dma_trace_release (struct snd_sof_dev*) ;
 int snd_sof_dma_trace_trigger (struct snd_sof_dev*,int ) ;
 int wake_up (int *) ;

void snd_sof_release_trace(struct snd_sof_dev *sdev)
{
 int ret;

 if (!sdev->dtrace_is_enabled)
  return;

 ret = snd_sof_dma_trace_trigger(sdev, SNDRV_PCM_TRIGGER_STOP);
 if (ret < 0)
  dev_err(sdev->dev,
   "error: snd_sof_dma_trace_trigger: stop: %d\n", ret);

 ret = snd_sof_dma_trace_release(sdev);
 if (ret < 0)
  dev_err(sdev->dev,
   "error: fail in snd_sof_dma_trace_release %d\n", ret);

 sdev->dtrace_is_enabled = 0;
 sdev->dtrace_draining = 1;
 wake_up(&sdev->trace_sleep);
}
