
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int BDW_DSP_BAR ;
 int SHIM_CSR ;
 int SHIM_CSR_STALL ;
 int SHIM_HMDC ;
 int SHIM_HMDC_HDDA_E0_ALLCH ;
 int SHIM_HMDC_HDDA_E1_ALLCH ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int,int ) ;
 int snd_sof_dsp_update_bits_unlocked (struct snd_sof_dev*,int ,int ,int ,int) ;

__attribute__((used)) static int bdw_run(struct snd_sof_dev *sdev)
{

 snd_sof_dsp_update_bits(sdev, BDW_DSP_BAR, SHIM_HMDC,
    SHIM_HMDC_HDDA_E0_ALLCH |
    SHIM_HMDC_HDDA_E1_ALLCH, 0);


 snd_sof_dsp_update_bits_unlocked(sdev, BDW_DSP_BAR, SHIM_CSR,
      SHIM_CSR_STALL, 0x0);


 return 1;
}
