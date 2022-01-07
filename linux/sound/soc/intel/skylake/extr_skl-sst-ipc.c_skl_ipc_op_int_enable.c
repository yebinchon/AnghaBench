
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SKL_ADSP_REG_HIPCCTL ;
 int SKL_ADSP_REG_HIPCCTL_BUSY ;
 int SKL_ADSP_REG_HIPCCTL_DONE ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int ,int ) ;

void skl_ipc_op_int_enable(struct sst_dsp *ctx)
{

 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_HIPCCTL,
  SKL_ADSP_REG_HIPCCTL_DONE, SKL_ADSP_REG_HIPCCTL_DONE);


 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_HIPCCTL,
  SKL_ADSP_REG_HIPCCTL_BUSY, SKL_ADSP_REG_HIPCCTL_BUSY);
}
