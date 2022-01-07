
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sof_intel_hda_dev {struct hdac_ext_stream* dtrace_stream; } ;
struct snd_dma_buffer {int bytes; } ;
struct snd_sof_dev {int dev; struct snd_dma_buffer dmatb; TYPE_1__* pdata; } ;
struct hdac_stream {int bufsize; scalar_t__ period_bytes; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;
struct TYPE_2__ {struct sof_intel_hda_dev* hw_pdata; } ;


 int dev_err (int ,char*,int) ;
 int hda_dsp_stream_hw_params (struct snd_sof_dev*,struct hdac_ext_stream*,struct snd_dma_buffer*,int *) ;

__attribute__((used)) static int hda_dsp_trace_prepare(struct snd_sof_dev *sdev)
{
 struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
 struct hdac_ext_stream *stream = hda->dtrace_stream;
 struct hdac_stream *hstream = &stream->hstream;
 struct snd_dma_buffer *dmab = &sdev->dmatb;
 int ret;

 hstream->period_bytes = 0;
 hstream->bufsize = sdev->dmatb.bytes;

 ret = hda_dsp_stream_hw_params(sdev, stream, dmab, ((void*)0));
 if (ret < 0)
  dev_err(sdev->dev, "error: hdac prepare failed: %x\n", ret);

 return ret;
}
