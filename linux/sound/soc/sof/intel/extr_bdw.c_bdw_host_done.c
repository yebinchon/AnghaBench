
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int BDW_DSP_BAR ;
 int SHIM_IMRX ;
 int SHIM_IMRX_BUSY ;
 int SHIM_IPCD ;
 int SHIM_IPCD_BUSY ;
 int SHIM_IPCD_DONE ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int,int) ;

__attribute__((used)) static void bdw_host_done(struct snd_sof_dev *sdev)
{

 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_IPCD,
      SHIM_IPCD_BUSY | SHIM_IPCD_DONE,
      SHIM_IPCD_DONE);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_IMRX,
      SHIM_IMRX_BUSY, 0);
}
