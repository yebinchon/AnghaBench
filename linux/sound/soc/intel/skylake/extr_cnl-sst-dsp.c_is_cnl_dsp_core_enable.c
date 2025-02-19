
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int CNL_ADSPCS_CPA (unsigned int) ;
 int CNL_ADSPCS_CRST (unsigned int) ;
 int CNL_ADSPCS_CSTALL (unsigned int) ;
 int CNL_ADSPCS_SPA (unsigned int) ;
 int CNL_ADSP_REG_ADSPCS ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

__attribute__((used)) static bool is_cnl_dsp_core_enable(struct sst_dsp *ctx, unsigned int core_mask)
{
 int val;
 bool is_enable;

 val = sst_dsp_shim_read_unlocked(ctx, CNL_ADSP_REG_ADSPCS);

 is_enable = (val & CNL_ADSPCS_CPA(core_mask)) &&
   (val & CNL_ADSPCS_SPA(core_mask)) &&
   !(val & CNL_ADSPCS_CRST(core_mask)) &&
   !(val & CNL_ADSPCS_CSTALL(core_mask));

 dev_dbg(ctx->dev, "DSP core(s) enabled? %d: core_mask %#x\n",
  is_enable, core_mask);

 return is_enable;
}
