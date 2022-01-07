
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_sof_dev {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dma_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct hdac_stream {int index; int frags; int stream_tag; int bufsize; int format_val; scalar_t__ direction; int fifo_size; TYPE_1__ bdl; scalar_t__* posbuf; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct hdac_bus {TYPE_2__ posbuf; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int HDA_DSP_HDA_BAR ;
 int HDA_DSP_PP_BAR ;
 int HDA_DSP_REG_POLL_INTERVAL_US ;
 int HDA_DSP_STREAM_RESET_TIMEOUT ;
 int HDA_DSP_STREAM_RUN_TIMEOUT ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SOF_HDA_ADSP_DPLBASE ;
 int SOF_HDA_ADSP_DPLBASE_ENABLE ;
 int SOF_HDA_ADSP_DPUBASE ;
 int SOF_HDA_ADSP_REG_CL_SD_BDLPL ;
 int SOF_HDA_ADSP_REG_CL_SD_BDLPU ;
 int SOF_HDA_ADSP_REG_CL_SD_CBL ;
 int SOF_HDA_ADSP_REG_CL_SD_FIFOSIZE ;
 int SOF_HDA_ADSP_REG_CL_SD_FORMAT ;
 int SOF_HDA_ADSP_REG_CL_SD_LVI ;
 int SOF_HDA_ADSP_REG_CL_SD_STS ;
 int SOF_HDA_CL_DMA_SD_INT_MASK ;
 int SOF_HDA_CL_SD_CTL_STREAM_TAG_MASK ;
 int SOF_HDA_CL_SD_CTL_STREAM_TAG_SHIFT ;
 int SOF_HDA_REG_PP_PPCTL ;
 int SOF_HDA_SD_CTL_DMA_START ;
 int SOF_STREAM_SD_OFFSET (struct hdac_stream*) ;
 int dev_err (int ,char*) ;
 int hda_dsp_stream_setup_bdl (struct snd_sof_dev*,struct snd_dma_buffer*,struct hdac_stream*) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int) ;
 int snd_sof_dsp_read_poll_timeout (struct snd_sof_dev*,int ,int,int,int,int ,int ) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int,int,int) ;
 int snd_sof_dsp_write (struct snd_sof_dev*,int ,int,int) ;
 struct hdac_bus* sof_to_bus (struct snd_sof_dev*) ;
 int udelay (int) ;
 int upper_32_bits (scalar_t__) ;

int hda_dsp_stream_hw_params(struct snd_sof_dev *sdev,
        struct hdac_ext_stream *stream,
        struct snd_dma_buffer *dmab,
        struct snd_pcm_hw_params *params)
{
 struct hdac_bus *bus = sof_to_bus(sdev);
 struct hdac_stream *hstream = &stream->hstream;
 int sd_offset = SOF_STREAM_SD_OFFSET(hstream);
 int ret, timeout = HDA_DSP_STREAM_RESET_TIMEOUT;
 u32 dma_start = SOF_HDA_SD_CTL_DMA_START;
 u32 val, mask;
 u32 run;

 if (!stream) {
  dev_err(sdev->dev, "error: no stream available\n");
  return -ENODEV;
 }


 mask = 0x1 << hstream->index;
 snd_sof_dsp_update_bits(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPCTL,
    mask, mask);

 if (!dmab) {
  dev_err(sdev->dev, "error: no dma buffer allocated!\n");
  return -ENODEV;
 }


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, sd_offset,
    SOF_HDA_CL_DMA_SD_INT_MASK |
    SOF_HDA_SD_CTL_DMA_START, 0);

 ret = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_HDA_BAR,
         sd_offset, run,
         !(run & dma_start),
         HDA_DSP_REG_POLL_INTERVAL_US,
         HDA_DSP_STREAM_RUN_TIMEOUT);

 if (ret)
  return ret;

 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR,
    sd_offset + SOF_HDA_ADSP_REG_CL_SD_STS,
    SOF_HDA_CL_DMA_SD_INT_MASK,
    SOF_HDA_CL_DMA_SD_INT_MASK);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, sd_offset, 0x1,
    0x1);
 udelay(3);
 do {
  val = snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR,
           sd_offset);
  if (val & 0x1)
   break;
 } while (--timeout);
 if (timeout == 0) {
  dev_err(sdev->dev, "error: stream reset failed\n");
  return -ETIMEDOUT;
 }

 timeout = HDA_DSP_STREAM_RESET_TIMEOUT;
 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, sd_offset, 0x1,
    0x0);


 udelay(3);
 do {
  val = snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR,
           sd_offset);
  if ((val & 0x1) == 0)
   break;
 } while (--timeout);
 if (timeout == 0) {
  dev_err(sdev->dev, "error: timeout waiting for stream reset\n");
  return -ETIMEDOUT;
 }

 if (hstream->posbuf)
  *hstream->posbuf = 0;


 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR,
     sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPL,
     0x0);
 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR,
     sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPU,
     0x0);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, sd_offset,
    SOF_HDA_CL_DMA_SD_INT_MASK |
    SOF_HDA_SD_CTL_DMA_START, 0);

 ret = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_HDA_BAR,
         sd_offset, run,
         !(run & dma_start),
         HDA_DSP_REG_POLL_INTERVAL_US,
         HDA_DSP_STREAM_RUN_TIMEOUT);

 if (ret)
  return ret;

 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR,
    sd_offset + SOF_HDA_ADSP_REG_CL_SD_STS,
    SOF_HDA_CL_DMA_SD_INT_MASK,
    SOF_HDA_CL_DMA_SD_INT_MASK);

 hstream->frags = 0;

 ret = hda_dsp_stream_setup_bdl(sdev, dmab, hstream);
 if (ret < 0) {
  dev_err(sdev->dev, "error: set up of BDL failed\n");
  return ret;
 }


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, sd_offset,
    SOF_HDA_CL_SD_CTL_STREAM_TAG_MASK,
    hstream->stream_tag <<
    SOF_HDA_CL_SD_CTL_STREAM_TAG_SHIFT);


 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR,
     sd_offset + SOF_HDA_ADSP_REG_CL_SD_CBL,
     hstream->bufsize);
 snd_sof_dsp_update_bits(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPCTL,
    mask, 0);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR,
    sd_offset +
    SOF_HDA_ADSP_REG_CL_SD_FORMAT,
    0xffff, hstream->format_val);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_PP_BAR, SOF_HDA_REG_PP_PPCTL,
    mask, mask);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR,
    sd_offset + SOF_HDA_ADSP_REG_CL_SD_LVI,
    0xffff, (hstream->frags - 1));


 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR,
     sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPL,
     (u32)hstream->bdl.addr);
 snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR,
     sd_offset + SOF_HDA_ADSP_REG_CL_SD_BDLPU,
     upper_32_bits(hstream->bdl.addr));


 if (!(snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR, SOF_HDA_ADSP_DPLBASE)
    & SOF_HDA_ADSP_DPLBASE_ENABLE)) {
  snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR, SOF_HDA_ADSP_DPUBASE,
      upper_32_bits(bus->posbuf.addr));
  snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR, SOF_HDA_ADSP_DPLBASE,
      (u32)bus->posbuf.addr |
      SOF_HDA_ADSP_DPLBASE_ENABLE);
 }


 snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, sd_offset,
    SOF_HDA_CL_DMA_SD_INT_MASK,
    SOF_HDA_CL_DMA_SD_INT_MASK);


 if (hstream->direction == SNDRV_PCM_STREAM_PLAYBACK) {
  hstream->fifo_size =
   snd_sof_dsp_read(sdev, HDA_DSP_HDA_BAR,
      sd_offset +
      SOF_HDA_ADSP_REG_CL_SD_FIFOSIZE);
  hstream->fifo_size &= 0xffff;
  hstream->fifo_size += 1;
 } else {
  hstream->fifo_size = 0;
 }

 return ret;
}
