
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SKL_DSP_CORE0_ID ;
 int skl_dsp_put_core (struct sst_dsp*,int ) ;

int skl_dsp_sleep(struct sst_dsp *ctx)
{
 return skl_dsp_put_core(ctx, SKL_DSP_CORE0_ID);
}
