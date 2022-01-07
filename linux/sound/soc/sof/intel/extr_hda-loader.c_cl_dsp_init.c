
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sof_intel_hda_dev {struct sof_intel_dsp_desc* desc; } ;
struct sof_intel_dsp_desc {int cores_mask; int ssp_count; int ipc_req_mask; unsigned int ipc_ack_mask; int rom_init_timeout; int ipc_ack; int ipc_req; scalar_t__ ssp_base_offset; } ;
struct snd_sof_dev {int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {struct sof_intel_hda_dev* hw_pdata; } ;


 int EIO ;
 int HDA_DSP_BAR ;
 int HDA_DSP_CORE_MASK (int ) ;
 int HDA_DSP_INIT_TIMEOUT_US ;
 int HDA_DSP_IPC_PURGE_FW ;
 int HDA_DSP_REG_POLL_INTERVAL_US ;
 unsigned int HDA_DSP_ROM_INIT ;
 unsigned int HDA_DSP_ROM_STS_MASK ;
 int HDA_DSP_SRAM_REG_ROM_STATUS ;
 int SOF_DBG_MBOX ;
 int SOF_DBG_PCI ;
 int SOF_DBG_REGS ;
 int SSP_DEV_MEM_SIZE ;
 int SSP_SET_SLAVE ;
 scalar_t__ SSP_SSC1_OFFSET ;
 int USEC_PER_MSEC ;
 int dev_err (int ,char*,...) ;
 int hda_dsp_core_power_down (struct snd_sof_dev*,int) ;
 int hda_dsp_core_power_up (struct snd_sof_dev*,int) ;
 int hda_dsp_core_reset_power_down (struct snd_sof_dev*,int) ;
 int hda_dsp_core_run (struct snd_sof_dev*,int) ;
 int hda_dsp_dump (struct snd_sof_dev*,int) ;
 int hda_dsp_ipc_int_enable (struct snd_sof_dev*) ;
 int snd_sof_dsp_read_poll_timeout (struct snd_sof_dev*,int ,int ,unsigned int,int,int ,int) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,scalar_t__,int ,int ) ;
 int snd_sof_dsp_write (struct snd_sof_dev*,int ,int ,int) ;

__attribute__((used)) static int cl_dsp_init(struct snd_sof_dev *sdev, const void *fwdata,
         u32 fwsize, int stream_tag)
{
 struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;
 const struct sof_intel_dsp_desc *chip = hda->desc;
 unsigned int status;
 int ret;
 int i;


 ret = hda_dsp_core_power_up(sdev, chip->cores_mask);
 if (ret < 0) {
  dev_err(sdev->dev, "error: dsp core 0/1 power up failed\n");
  goto err;
 }


 for (i = 0; i < chip->ssp_count; i++) {
  snd_sof_dsp_update_bits_unlocked(sdev, HDA_DSP_BAR,
       chip->ssp_base_offset
       + i * SSP_DEV_MEM_SIZE
       + SSP_SSC1_OFFSET,
       SSP_SET_SLAVE,
       SSP_SET_SLAVE);
 }


 snd_sof_dsp_write(sdev, HDA_DSP_BAR, chip->ipc_req,
     chip->ipc_req_mask | (HDA_DSP_IPC_PURGE_FW |
     ((stream_tag - 1) << 9)));


 ret = hda_dsp_core_run(sdev, HDA_DSP_CORE_MASK(0));
 if (ret < 0) {
  dev_err(sdev->dev, "error: dsp core start failed %d\n", ret);
  ret = -EIO;
  goto err;
 }


 ret = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_BAR,
         chip->ipc_ack, status,
         ((status & chip->ipc_ack_mask)
          == chip->ipc_ack_mask),
         HDA_DSP_REG_POLL_INTERVAL_US,
         HDA_DSP_INIT_TIMEOUT_US);

 if (ret < 0) {
  dev_err(sdev->dev, "error: waiting for HIPCIE done\n");
  goto err;
 }


 ret = hda_dsp_core_power_down(sdev,
      chip->cores_mask & ~(HDA_DSP_CORE_MASK(0)));
 if (ret < 0) {
  dev_err(sdev->dev, "error: dsp core x power down failed\n");
  goto err;
 }


 hda_dsp_ipc_int_enable(sdev);


 ret = snd_sof_dsp_read_poll_timeout(sdev, HDA_DSP_BAR,
     HDA_DSP_SRAM_REG_ROM_STATUS, status,
     ((status & HDA_DSP_ROM_STS_MASK)
      == HDA_DSP_ROM_INIT),
     HDA_DSP_REG_POLL_INTERVAL_US,
     chip->rom_init_timeout *
     USEC_PER_MSEC);
 if (!ret)
  return 0;

err:
 hda_dsp_dump(sdev, SOF_DBG_REGS | SOF_DBG_PCI | SOF_DBG_MBOX);
 hda_dsp_core_reset_power_down(sdev, chip->cores_mask);

 return ret;
}
