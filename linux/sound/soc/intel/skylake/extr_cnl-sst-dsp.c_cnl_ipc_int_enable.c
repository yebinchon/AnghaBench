
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int CNL_ADSPIC_IPC ;
 int CNL_ADSP_REG_ADSPIC ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int ,int ) ;

void cnl_ipc_int_enable(struct sst_dsp *ctx)
{
 sst_dsp_shim_update_bits(ctx, CNL_ADSP_REG_ADSPIC,
     CNL_ADSPIC_IPC, CNL_ADSPIC_IPC);
}
