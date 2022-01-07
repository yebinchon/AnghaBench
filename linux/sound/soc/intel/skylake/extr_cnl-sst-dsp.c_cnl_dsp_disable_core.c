
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int EIO ;
 int cnl_dsp_core_power_down (struct sst_dsp*,unsigned int) ;
 int cnl_dsp_reset_core (struct sst_dsp*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 scalar_t__ is_cnl_dsp_core_enable (struct sst_dsp*,unsigned int) ;

int cnl_dsp_disable_core(struct sst_dsp *ctx, unsigned int core_mask)
{
 int ret;

 ret = cnl_dsp_reset_core(ctx, core_mask);
 if (ret < 0) {
  dev_err(ctx->dev, "DSP core mask %#x reset failed\n",
   core_mask);
  return ret;
 }


 ret = cnl_dsp_core_power_down(ctx, core_mask);
 if (ret < 0) {
  dev_err(ctx->dev, "DSP core mask %#x power down failed\n",
   core_mask);
  return ret;
 }

 if (is_cnl_dsp_core_enable(ctx, core_mask)) {
  dev_err(ctx->dev, "DSP core mask %#x disable failed\n",
   core_mask);
  ret = -EIO;
 }

 return ret;
}
