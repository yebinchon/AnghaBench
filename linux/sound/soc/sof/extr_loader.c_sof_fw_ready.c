
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sof_ipc_fw_ready {int dummy; } ;
struct snd_sof_dev {int first_boot; int dev; struct sof_ipc_fw_ready fw_ready; } ;


 int EINVAL ;
 int SOF_FW_BLK_TYPE_SRAM ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*) ;
 int snd_sof_dsp_get_bar_index (struct snd_sof_dev*,int ) ;
 int snd_sof_dsp_get_mailbox_offset (struct snd_sof_dev*) ;
 int snd_sof_fw_parse_ext_data (struct snd_sof_dev*,int,int) ;
 int snd_sof_ipc_valid (struct snd_sof_dev*) ;
 int sof_block_read (struct snd_sof_dev*,int,int,struct sof_ipc_fw_ready*,int) ;
 int sof_get_windows (struct snd_sof_dev*) ;

int sof_fw_ready(struct snd_sof_dev *sdev, u32 msg_id)
{
 struct sof_ipc_fw_ready *fw_ready = &sdev->fw_ready;
 int offset;
 int bar;
 int ret;


 offset = snd_sof_dsp_get_mailbox_offset(sdev);
 if (offset < 0) {
  dev_err(sdev->dev, "error: have no mailbox offset\n");
  return offset;
 }

 bar = snd_sof_dsp_get_bar_index(sdev, SOF_FW_BLK_TYPE_SRAM);
 if (bar < 0) {
  dev_err(sdev->dev, "error: have no bar mapping\n");
  return -EINVAL;
 }

 dev_dbg(sdev->dev, "ipc: DSP is ready 0x%8.8x offset 0x%x\n",
  msg_id, offset);


 if (!sdev->first_boot)
  return 0;


 sof_block_read(sdev, bar, offset, fw_ready, sizeof(*fw_ready));


 ret = snd_sof_ipc_valid(sdev);
 if (ret < 0)
  return ret;


 snd_sof_fw_parse_ext_data(sdev, bar, offset +
      sizeof(struct sof_ipc_fw_ready));

 sof_get_windows(sdev);

 return 0;
}
