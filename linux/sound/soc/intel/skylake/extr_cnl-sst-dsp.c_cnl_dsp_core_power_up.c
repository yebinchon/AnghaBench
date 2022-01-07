
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int CNL_ADSPCS_CPA (unsigned int) ;
 int CNL_ADSPCS_SPA (unsigned int) ;
 int CNL_ADSP_REG_ADSPCS ;
 int CNL_DSP_PU_TO ;
 int sst_dsp_register_poll (struct sst_dsp*,int ,int ,int ,int ,char*) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

__attribute__((used)) static int cnl_dsp_core_power_up(struct sst_dsp *ctx, unsigned int core_mask)
{

 sst_dsp_shim_update_bits_unlocked(ctx, CNL_ADSP_REG_ADSPCS,
       CNL_ADSPCS_SPA(core_mask),
       CNL_ADSPCS_SPA(core_mask));


 return sst_dsp_register_poll(ctx, CNL_ADSP_REG_ADSPCS,
        CNL_ADSPCS_CPA(core_mask),
        CNL_ADSPCS_CPA(core_mask),
        CNL_DSP_PU_TO,
        "Power up");
}
