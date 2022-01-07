
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int boot_complete; int enabled_cores_mask; int dev; int boot_timeout; int boot_wait; int fw_version; scalar_t__ first_boot; } ;


 int EIO ;
 int SOF_DBG_MBOX ;
 int SOF_DBG_PCI ;
 int SOF_DBG_REGS ;
 int SOF_DBG_TEXT ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int init_waitqueue_head (int *) ;
 int msecs_to_jiffies (int ) ;
 int snd_sof_debugfs_buf_item (struct snd_sof_dev*,int *,int,char*,int) ;
 int snd_sof_dsp_dbg_dump (struct snd_sof_dev*,int) ;
 int snd_sof_dsp_post_fw_run (struct snd_sof_dev*) ;
 int snd_sof_dsp_pre_fw_run (struct snd_sof_dev*) ;
 int snd_sof_dsp_run (struct snd_sof_dev*) ;
 int wait_event_timeout (int ,int,int ) ;

int snd_sof_run_firmware(struct snd_sof_dev *sdev)
{
 int ret;
 int init_core_mask;

 init_waitqueue_head(&sdev->boot_wait);
 sdev->boot_complete = 0;


 if (sdev->first_boot) {
  ret = snd_sof_debugfs_buf_item(sdev, &sdev->fw_version,
            sizeof(sdev->fw_version),
            "fw_version", 0444);

  if (ret < 0) {
   dev_err(sdev->dev, "error: snd_sof_debugfs_buf_item failed\n");
   return ret;
  }
 }


 ret = snd_sof_dsp_pre_fw_run(sdev);
 if (ret < 0) {
  dev_err(sdev->dev, "error: failed pre fw run op\n");
  return ret;
 }

 dev_dbg(sdev->dev, "booting DSP firmware\n");


 ret = snd_sof_dsp_run(sdev);
 if (ret < 0) {
  dev_err(sdev->dev, "error: failed to reset DSP\n");
  return ret;
 }

 init_core_mask = ret;


 ret = wait_event_timeout(sdev->boot_wait, sdev->boot_complete,
     msecs_to_jiffies(sdev->boot_timeout));
 if (ret == 0) {
  dev_err(sdev->dev, "error: firmware boot failure\n");
  snd_sof_dsp_dbg_dump(sdev, SOF_DBG_REGS | SOF_DBG_MBOX |
   SOF_DBG_TEXT | SOF_DBG_PCI);

  sdev->boot_complete = 1;
  return -EIO;
 }

 dev_info(sdev->dev, "firmware boot complete\n");


 ret = snd_sof_dsp_post_fw_run(sdev);
 if (ret < 0) {
  dev_err(sdev->dev, "error: failed post fw run op\n");
  return ret;
 }


 sdev->enabled_cores_mask = init_core_mask;

 return 0;
}
