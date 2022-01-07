
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int cnl_dsp_core_power_up (struct sst_dsp*,unsigned int) ;
 int cnl_dsp_start_core (struct sst_dsp*,unsigned int) ;
 int dev_dbg (int ,char*,unsigned int) ;

int cnl_dsp_enable_core(struct sst_dsp *ctx, unsigned int core_mask)
{
 int ret;


 ret = cnl_dsp_core_power_up(ctx, core_mask);
 if (ret < 0) {
  dev_dbg(ctx->dev, "DSP core mask %#x power up failed",
   core_mask);
  return ret;
 }

 return cnl_dsp_start_core(ctx, core_mask);
}
