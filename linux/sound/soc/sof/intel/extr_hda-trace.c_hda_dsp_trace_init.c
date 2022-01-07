
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sof_intel_hda_dev {TYPE_3__* dtrace_stream; } ;
struct snd_sof_dev {int dev; TYPE_2__* pdata; } ;
struct TYPE_4__ {int stream_tag; } ;
struct TYPE_6__ {TYPE_1__ hstream; } ;
struct TYPE_5__ {struct sof_intel_hda_dev* hw_pdata; } ;


 int ENODEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int dev_err (int ,char*,...) ;
 TYPE_3__* hda_dsp_stream_get (struct snd_sof_dev*,int ) ;
 int hda_dsp_stream_put (struct snd_sof_dev*,int ,int ) ;
 int hda_dsp_trace_prepare (struct snd_sof_dev*) ;

int hda_dsp_trace_init(struct snd_sof_dev *sdev, u32 *stream_tag)
{
 struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
 int ret;

 hda->dtrace_stream = hda_dsp_stream_get(sdev,
      SNDRV_PCM_STREAM_CAPTURE);

 if (!hda->dtrace_stream) {
  dev_err(sdev->dev,
   "error: no available capture stream for DMA trace\n");
  return -ENODEV;
 }

 *stream_tag = hda->dtrace_stream->hstream.stream_tag;





 ret = hda_dsp_trace_prepare(sdev);
 if (ret < 0) {
  dev_err(sdev->dev, "error: hdac trace init failed: %x\n", ret);
  hda_dsp_stream_put(sdev, SNDRV_PCM_STREAM_CAPTURE, *stream_tag);
  hda->dtrace_stream = ((void*)0);
  *stream_tag = 0;
 }

 return ret;
}
