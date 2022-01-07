
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int SKL_DSP_CORE0_MASK ;
 int dev_err (int ,char*,int) ;
 scalar_t__ is_skl_dsp_core_enable (struct sst_dsp*,int ) ;
 int skl_dsp_disable_core (struct sst_dsp*,int ) ;
 int skl_dsp_enable_core (struct sst_dsp*,int ) ;
 int skl_dsp_reset_core (struct sst_dsp*,int ) ;
 int skl_dsp_start_core (struct sst_dsp*,int ) ;

int skl_dsp_boot(struct sst_dsp *ctx)
{
 int ret;

 if (is_skl_dsp_core_enable(ctx, SKL_DSP_CORE0_MASK)) {
  ret = skl_dsp_reset_core(ctx, SKL_DSP_CORE0_MASK);
  if (ret < 0) {
   dev_err(ctx->dev, "dsp core0 reset fail: %d\n", ret);
   return ret;
  }

  ret = skl_dsp_start_core(ctx, SKL_DSP_CORE0_MASK);
  if (ret < 0) {
   dev_err(ctx->dev, "dsp core0 start fail: %d\n", ret);
   return ret;
  }
 } else {
  ret = skl_dsp_disable_core(ctx, SKL_DSP_CORE0_MASK);
  if (ret < 0) {
   dev_err(ctx->dev, "dsp core0 disable fail: %d\n", ret);
   return ret;
  }
  ret = skl_dsp_enable_core(ctx, SKL_DSP_CORE0_MASK);
 }

 return ret;
}
