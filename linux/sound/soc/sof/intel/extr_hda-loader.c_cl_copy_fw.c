
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; } ;
struct hdac_ext_stream {int dummy; } ;


 int HDA_DSP_BAR ;
 int HDA_DSP_BASEFW_TIMEOUT_US ;
 int HDA_DSP_REG_POLL_INTERVAL_US ;
 unsigned int HDA_DSP_ROM_FW_ENTERED ;
 unsigned int HDA_DSP_ROM_STS_MASK ;
 int HDA_DSP_SRAM_REG_ROM_STATUS ;
 int SNDRV_PCM_TRIGGER_START ;
 int SNDRV_PCM_TRIGGER_STOP ;
 int cl_trigger (struct snd_sof_dev*,struct hdac_ext_stream*,int ) ;
 int dev_err (int ,char*) ;
 int snd_sof_dsp_read_poll_timeout (struct snd_sof_dev*,int ,int ,unsigned int,int,int ,int ) ;

__attribute__((used)) static int cl_copy_fw(struct snd_sof_dev *sdev, struct hdac_ext_stream *stream)
{
 unsigned int reg;
 int ret, status;

 ret = cl_trigger(sdev, stream, SNDRV_PCM_TRIGGER_START);
 if (ret < 0) {
  dev_err(sdev->dev, "error: DMA trigger start failed\n");
  return ret;
 }

 status = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_BAR,
     HDA_DSP_SRAM_REG_ROM_STATUS, reg,
     ((reg & HDA_DSP_ROM_STS_MASK)
      == HDA_DSP_ROM_FW_ENTERED),
     HDA_DSP_REG_POLL_INTERVAL_US,
     HDA_DSP_BASEFW_TIMEOUT_US);

 ret = cl_trigger(sdev, stream, SNDRV_PCM_TRIGGER_STOP);
 if (ret < 0) {
  dev_err(sdev->dev, "error: DMA trigger stop failed\n");
  return ret;
 }

 return status;
}
