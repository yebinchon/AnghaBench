
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int BYT_DSP_BAR ;
 int SHIM_BYT_IPCD_BUSY ;
 int SHIM_BYT_IPCD_DONE ;
 int SHIM_IMRX ;
 int SHIM_IMRX_BUSY ;
 int SHIM_IPCD ;
 int snd_sof_dsp_update_bits64_unlocked (struct snd_sof_dev*,int ,int ,int,int) ;

__attribute__((used)) static void byt_host_done(struct snd_sof_dev *sdev)
{

 snd_sof_dsp_update_bits64_unlocked(sdev, BYT_DSP_BAR, SHIM_IPCD,
        SHIM_BYT_IPCD_BUSY |
        SHIM_BYT_IPCD_DONE,
        SHIM_BYT_IPCD_DONE);


 snd_sof_dsp_update_bits64_unlocked(sdev, BYT_DSP_BAR, SHIM_IMRX,
        SHIM_IMRX_BUSY, 0);
}
