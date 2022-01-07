
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; } ;


 int BYT_DSP_BAR ;
 int ENODEV ;
 int SHIM_BYT_CSR_PWAITMODE ;
 int SHIM_BYT_CSR_STALL ;
 int SHIM_CSR ;
 int SOF_DBG_MBOX ;
 int SOF_DBG_REGS ;
 int byt_dump (struct snd_sof_dev*,int) ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int snd_sof_dsp_read64 (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_dsp_update_bits64 (struct snd_sof_dev*,int ,int ,int ,int) ;

__attribute__((used)) static int byt_run(struct snd_sof_dev *sdev)
{
 int tries = 10;


 snd_sof_dsp_update_bits64(sdev, BYT_DSP_BAR, SHIM_CSR,
      SHIM_BYT_CSR_STALL, 0x0);
 while (tries--) {
  if (!(snd_sof_dsp_read64(sdev, BYT_DSP_BAR, SHIM_CSR) &
        SHIM_BYT_CSR_PWAITMODE))
   break;
  msleep(100);
 }
 if (tries < 0) {
  dev_err(sdev->dev, "error:  unable to run DSP firmware\n");
  byt_dump(sdev, SOF_DBG_REGS | SOF_DBG_MBOX);
  return -ENODEV;
 }


 return 1;
}
