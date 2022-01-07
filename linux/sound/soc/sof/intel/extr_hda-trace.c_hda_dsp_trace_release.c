
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sof_intel_hda_dev {TYPE_2__* dtrace_stream; } ;
struct snd_sof_dev {int dev; TYPE_1__* pdata; } ;
struct hdac_stream {int stream_tag; } ;
struct TYPE_4__ {struct hdac_stream hstream; } ;
struct TYPE_3__ {struct sof_intel_hda_dev* hw_pdata; } ;


 int ENODEV ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*) ;
 int hda_dsp_stream_put (struct snd_sof_dev*,int ,int ) ;

int hda_dsp_trace_release(struct snd_sof_dev *sdev)
{
 struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
 struct hdac_stream *hstream;

 if (hda->dtrace_stream) {
  hstream = &hda->dtrace_stream->hstream;
  hda_dsp_stream_put(sdev,
       SNDRV_PCM_STREAM_CAPTURE,
       hstream->stream_tag);
  hda->dtrace_stream = ((void*)0);
  return 0;
 }

 dev_dbg(sdev->dev, "DMA trace stream is not opened!\n");
 return -ENODEV;
}
