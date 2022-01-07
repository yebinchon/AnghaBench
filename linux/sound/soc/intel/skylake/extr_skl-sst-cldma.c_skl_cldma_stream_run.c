
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int CL_SD_CTL_RUN (int) ;
 unsigned char CL_SD_CTL_RUN_MASK ;
 int SKL_ADSP_REG_CL_SD_CTL ;
 int dev_err (int ,char*,unsigned char,int) ;
 unsigned char sst_dsp_shim_read (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,unsigned char,int ) ;
 int udelay (int) ;

__attribute__((used)) static void skl_cldma_stream_run(struct sst_dsp *ctx, bool enable)
{
 unsigned char val;
 int timeout;

 sst_dsp_shim_update_bits_unlocked(ctx,
   SKL_ADSP_REG_CL_SD_CTL,
   CL_SD_CTL_RUN_MASK, CL_SD_CTL_RUN(enable));

 udelay(3);
 timeout = 300;
 do {

  val = sst_dsp_shim_read(ctx, SKL_ADSP_REG_CL_SD_CTL) &
   CL_SD_CTL_RUN_MASK;
  if (enable && val)
   break;
  else if (!enable && !val)
   break;
  udelay(3);
 } while (--timeout);

 if (timeout == 0)
  dev_err(ctx->dev, "Failed to set Run bit=%d enable=%d\n", val, enable);
}
