
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sof_ipc_stream_params {int stream_tag; scalar_t__ host_period_bytes; } ;
struct sof_intel_hda_dev {scalar_t__ no_ipc_position; } ;
struct snd_sof_dev {int dev; TYPE_1__* pdata; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int info; int flags; } ;
struct snd_dma_buffer {int dummy; } ;
struct hdac_stream {int format_val; int bufsize; int no_period_wakeup; int stream_tag; int period_bytes; struct snd_pcm_substream* substream; } ;
struct hdac_ext_stream {int dummy; } ;
struct TYPE_4__ {struct snd_dma_buffer* dma_buffer_p; struct hdac_stream* private_data; } ;
struct TYPE_3__ {struct sof_intel_hda_dev* hw_pdata; } ;


 int HDA_DSP_SPIB_DISABLE ;
 int SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP ;
 int SNDRV_PCM_INFO_NO_PERIOD_WAKEUP ;
 int dev_err (int ,char*,int) ;
 int get_bits (struct snd_sof_dev*,int ) ;
 int get_mult_div (struct snd_sof_dev*,int ) ;
 int hda_dsp_stream_hw_params (struct snd_sof_dev*,struct hdac_ext_stream*,struct snd_dma_buffer*,struct snd_pcm_hw_params*) ;
 int hda_dsp_stream_spib_config (struct snd_sof_dev*,struct hdac_ext_stream*,int ,int ) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct hdac_ext_stream* stream_to_hdac_ext_stream (struct hdac_stream*) ;

int hda_dsp_pcm_hw_params(struct snd_sof_dev *sdev,
     struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct sof_ipc_stream_params *ipc_params)
{
 struct hdac_stream *hstream = substream->runtime->private_data;
 struct hdac_ext_stream *stream = stream_to_hdac_ext_stream(hstream);
 struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
 struct snd_dma_buffer *dmab;
 int ret;
 u32 size, rate, bits;

 size = params_buffer_bytes(params);
 rate = get_mult_div(sdev, params_rate(params));
 bits = get_bits(sdev, params_width(params));

 hstream->substream = substream;

 dmab = substream->runtime->dma_buffer_p;

 hstream->format_val = rate | bits | (params_channels(params) - 1);
 hstream->bufsize = size;
 hstream->period_bytes = params_period_bytes(params);
 hstream->no_period_wakeup =
   (params->info & SNDRV_PCM_INFO_NO_PERIOD_WAKEUP) &&
   (params->flags & SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP);

 ret = hda_dsp_stream_hw_params(sdev, stream, dmab, params);
 if (ret < 0) {
  dev_err(sdev->dev, "error: hdac prepare failed: %x\n", ret);
  return ret;
 }


 hda_dsp_stream_spib_config(sdev, stream, HDA_DSP_SPIB_DISABLE, 0);


 if (hda && hda->no_ipc_position)
  ipc_params->host_period_bytes = 0;

 ipc_params->stream_tag = hstream->stream_tag;

 return 0;
}
