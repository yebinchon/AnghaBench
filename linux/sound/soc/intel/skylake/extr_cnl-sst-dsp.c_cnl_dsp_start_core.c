
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int CNL_ADSPCS_CSTALL (unsigned int) ;
 int CNL_ADSP_REG_ADSPCS ;
 int EIO ;
 int cnl_dsp_core_unset_reset_state (struct sst_dsp*,unsigned int) ;
 int cnl_dsp_reset_core (struct sst_dsp*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int is_cnl_dsp_core_enable (struct sst_dsp*,unsigned int) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

__attribute__((used)) static int cnl_dsp_start_core(struct sst_dsp *ctx, unsigned int core_mask)
{
 int ret;


 ret = cnl_dsp_core_unset_reset_state(ctx, core_mask);
 if (ret < 0)
  return ret;


 sst_dsp_shim_update_bits_unlocked(ctx, CNL_ADSP_REG_ADSPCS,
    CNL_ADSPCS_CSTALL(core_mask), 0);

 if (!is_cnl_dsp_core_enable(ctx, core_mask)) {
  cnl_dsp_reset_core(ctx, core_mask);
  dev_err(ctx->dev, "DSP core mask %#x enable failed\n",
   core_mask);
  ret = -EIO;
 }

 return ret;
}
