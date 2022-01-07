
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int CNL_ADSPCS_CSTALL (unsigned int) ;
 int CNL_ADSP_REG_ADSPCS ;
 int cnl_dsp_core_set_reset_state (struct sst_dsp*,unsigned int) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

__attribute__((used)) static int cnl_dsp_reset_core(struct sst_dsp *ctx, unsigned int core_mask)
{

 sst_dsp_shim_update_bits_unlocked(ctx, CNL_ADSP_REG_ADSPCS,
   CNL_ADSPCS_CSTALL(core_mask),
   CNL_ADSPCS_CSTALL(core_mask));


 return cnl_dsp_core_set_reset_state(ctx, core_mask);
}
