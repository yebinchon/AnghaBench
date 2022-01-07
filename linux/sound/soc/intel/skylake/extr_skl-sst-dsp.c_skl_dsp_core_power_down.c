
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SKL_ADSPCS_CPA_MASK (unsigned int) ;
 int SKL_ADSPCS_SPA_MASK (unsigned int) ;
 int SKL_ADSP_REG_ADSPCS ;
 int SKL_DSP_PD_TO ;
 int sst_dsp_register_poll (struct sst_dsp*,int ,int ,int ,int ,char*) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

int skl_dsp_core_power_down(struct sst_dsp *ctx, unsigned int core_mask)
{

 sst_dsp_shim_update_bits_unlocked(ctx, SKL_ADSP_REG_ADSPCS,
    SKL_ADSPCS_SPA_MASK(core_mask), 0);


 return sst_dsp_register_poll(ctx,
   SKL_ADSP_REG_ADSPCS,
   SKL_ADSPCS_CPA_MASK(core_mask),
   0,
   SKL_DSP_PD_TO,
   "Power down");
}
