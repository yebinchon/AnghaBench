
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int CL_SPBFIFO_SPBFCCTL_SPIBE (int) ;
 int CL_SPBFIFO_SPBFCCTL_SPIBE_MASK ;
 int SKL_ADSP_REG_CL_SPBFIFO_SPBFCCTL ;
 int SKL_ADSP_REG_CL_SPBFIFO_SPIB ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;
 int sst_dsp_shim_write_unlocked (struct sst_dsp*,int ,unsigned int) ;

__attribute__((used)) static void skl_cldma_setup_spb(struct sst_dsp *ctx,
  unsigned int size, bool enable)
{
 if (enable)
  sst_dsp_shim_update_bits_unlocked(ctx,
    SKL_ADSP_REG_CL_SPBFIFO_SPBFCCTL,
    CL_SPBFIFO_SPBFCCTL_SPIBE_MASK,
    CL_SPBFIFO_SPBFCCTL_SPIBE(1));

 sst_dsp_shim_write_unlocked(ctx, SKL_ADSP_REG_CL_SPBFIFO_SPIB, size);
}
