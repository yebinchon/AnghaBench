
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sof_dev {int dev; } ;
struct hdac_stream {int index; int running; } ;
struct hdac_ext_stream {struct hdac_stream hstream; } ;


 int EINVAL ;
 int HDA_DSP_HDA_BAR ;
 int HDA_DSP_REG_POLL_INTERVAL_US ;
 int HDA_DSP_STREAM_RUN_TIMEOUT ;






 int SOF_HDA_ADSP_REG_CL_SD_STS ;
 int SOF_HDA_CL_DMA_SD_INT_MASK ;
 int SOF_HDA_INTCTL ;
 int SOF_HDA_SD_CTL_DMA_START ;
 int SOF_STREAM_SD_OFFSET (struct hdac_stream*) ;
 int dev_err (int ,char*,int) ;
 int snd_sof_dsp_read_poll_timeout (struct snd_sof_dev*,int ,int,int,int,int ,int ) ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int,int,int) ;
 int snd_sof_dsp_write (struct snd_sof_dev*,int ,int ,int) ;

int hda_dsp_stream_trigger(struct snd_sof_dev *sdev,
      struct hdac_ext_stream *stream, int cmd)
{
 struct hdac_stream *hstream = &stream->hstream;
 int sd_offset = SOF_STREAM_SD_OFFSET(hstream);
 u32 dma_start = SOF_HDA_SD_CTL_DMA_START;
 int ret;
 u32 run;


 switch (cmd) {
 case 131:
 case 132:
 case 130:
  snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, SOF_HDA_INTCTL,
     1 << hstream->index,
     1 << hstream->index);

  snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR,
     sd_offset,
     SOF_HDA_SD_CTL_DMA_START |
     SOF_HDA_CL_DMA_SD_INT_MASK,
     SOF_HDA_SD_CTL_DMA_START |
     SOF_HDA_CL_DMA_SD_INT_MASK);

  ret = snd_sof_dsp_read_poll_timeout(sdev,
     HDA_DSP_HDA_BAR,
     sd_offset, run,
     ((run & dma_start) == dma_start),
     HDA_DSP_REG_POLL_INTERVAL_US,
     HDA_DSP_STREAM_RUN_TIMEOUT);

  if (ret)
   return ret;

  hstream->running = 1;
  break;
 case 128:
 case 133:
 case 129:
  snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR,
     sd_offset,
     SOF_HDA_SD_CTL_DMA_START |
     SOF_HDA_CL_DMA_SD_INT_MASK, 0x0);

  ret = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_HDA_BAR,
      sd_offset, run,
      !(run & dma_start),
      HDA_DSP_REG_POLL_INTERVAL_US,
      HDA_DSP_STREAM_RUN_TIMEOUT);

  if (ret)
   return ret;

  snd_sof_dsp_write(sdev, HDA_DSP_HDA_BAR, sd_offset +
      SOF_HDA_ADSP_REG_CL_SD_STS,
      SOF_HDA_CL_DMA_SD_INT_MASK);

  hstream->running = 0;
  snd_sof_dsp_update_bits(sdev, HDA_DSP_HDA_BAR, SOF_HDA_INTCTL,
     1 << hstream->index, 0x0);
  break;
 default:
  dev_err(sdev->dev, "error: unknown command: %d\n", cmd);
  return -EINVAL;
 }

 return 0;
}
