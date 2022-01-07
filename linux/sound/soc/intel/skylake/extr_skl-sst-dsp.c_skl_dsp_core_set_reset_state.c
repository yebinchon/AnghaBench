
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int EIO ;
 int SKL_ADSPCS_CRST_MASK (unsigned int) ;
 int SKL_ADSP_REG_ADSPCS ;
 int SKL_DSP_RESET_TO ;
 int dev_err (int ,char*,unsigned int) ;
 int sst_dsp_register_poll (struct sst_dsp*,int ,int,int,int ,char*) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int,int) ;

__attribute__((used)) static int
skl_dsp_core_set_reset_state(struct sst_dsp *ctx, unsigned int core_mask)
{
 int ret;


 sst_dsp_shim_update_bits_unlocked(ctx,
   SKL_ADSP_REG_ADSPCS, SKL_ADSPCS_CRST_MASK(core_mask),
   SKL_ADSPCS_CRST_MASK(core_mask));


 ret = sst_dsp_register_poll(ctx,
   SKL_ADSP_REG_ADSPCS,
   SKL_ADSPCS_CRST_MASK(core_mask),
   SKL_ADSPCS_CRST_MASK(core_mask),
   SKL_DSP_RESET_TO,
   "Set reset");
 if ((sst_dsp_shim_read_unlocked(ctx, SKL_ADSP_REG_ADSPCS) &
    SKL_ADSPCS_CRST_MASK(core_mask)) !=
    SKL_ADSPCS_CRST_MASK(core_mask)) {
  dev_err(ctx->dev, "Set reset state failed: core_mask %x\n",
       core_mask);
  ret = -EIO;
 }

 return ret;
}
