
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SKL_ADSPCS_CSTALL_MASK (unsigned int) ;
 int SKL_ADSP_REG_ADSPCS ;
 int skl_dsp_core_set_reset_state (struct sst_dsp*,unsigned int) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

__attribute__((used)) static int skl_dsp_reset_core(struct sst_dsp *ctx, unsigned int core_mask)
{

 sst_dsp_shim_update_bits_unlocked(ctx, SKL_ADSP_REG_ADSPCS,
   SKL_ADSPCS_CSTALL_MASK(core_mask),
   SKL_ADSPCS_CSTALL_MASK(core_mask));


 return skl_dsp_core_set_reset_state(ctx, core_mask);
}
