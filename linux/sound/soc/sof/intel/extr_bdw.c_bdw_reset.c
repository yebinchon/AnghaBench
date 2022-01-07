
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int BDW_DSP_BAR ;
 int SHIM_CSR ;
 int SHIM_CSR_RST ;
 int SHIM_CSR_STALL ;
 int mdelay (int) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int,int) ;

__attribute__((used)) static int bdw_reset(struct snd_sof_dev *sdev)
{

 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_CSR,
      SHIM_CSR_RST | SHIM_CSR_STALL,
      SHIM_CSR_RST | SHIM_CSR_STALL);


 mdelay(10);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_CSR,
      SHIM_CSR_RST | SHIM_CSR_STALL,
      SHIM_CSR_STALL);

 return 0;
}
