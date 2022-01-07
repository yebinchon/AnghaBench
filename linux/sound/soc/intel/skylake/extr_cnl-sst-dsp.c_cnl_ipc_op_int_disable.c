
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int CNL_ADSP_REG_HIPCCTL ;
 int CNL_ADSP_REG_HIPCCTL_BUSY ;
 int CNL_ADSP_REG_HIPCCTL_DONE ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int ,int ) ;

void cnl_ipc_op_int_disable(struct sst_dsp *ctx)
{

 sst_dsp_shim_update_bits(ctx, CNL_ADSP_REG_HIPCCTL,
     CNL_ADSP_REG_HIPCCTL_DONE, 0);


 sst_dsp_shim_update_bits(ctx, CNL_ADSP_REG_HIPCCTL,
     CNL_ADSP_REG_HIPCCTL_BUSY, 0);
}
