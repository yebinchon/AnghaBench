
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int BYT_DSP_BAR ;
 int SHIM_BYT_IPCX_DONE ;
 int SHIM_IMRX ;
 int SHIM_IMRX_DONE ;
 int SHIM_IPCX ;
 int snd_sof_dsp_update_bits64_unlocked (struct snd_sof_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void byt_dsp_done(struct snd_sof_dev *sdev)
{

 snd_sof_dsp_update_bits64_unlocked(sdev, BYT_DSP_BAR, SHIM_IPCX,
        SHIM_BYT_IPCX_DONE, 0);


 snd_sof_dsp_update_bits64_unlocked(sdev, BYT_DSP_BAR, SHIM_IMRX,
        SHIM_IMRX_DONE, 0);
}
