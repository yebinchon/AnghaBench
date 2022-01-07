
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int BDW_DSP_BAR ;
 int SHIM_IMRX ;
 int SHIM_IMRX_DONE ;
 int SHIM_IPCX ;
 int SHIM_IPCX_DONE ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void bdw_dsp_done(struct snd_sof_dev *sdev)
{

 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_IPCX,
      SHIM_IPCX_DONE, 0);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_IMRX,
      SHIM_IMRX_DONE, 0);
}
