
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SKL_ADSPIC_CL_DMA ;
 int SKL_ADSP_REG_ADSPIC ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

void skl_cldma_int_disable(struct sst_dsp *ctx)
{
 sst_dsp_shim_update_bits_unlocked(ctx,
   SKL_ADSP_REG_ADSPIC, SKL_ADSPIC_CL_DMA, 0);
}
