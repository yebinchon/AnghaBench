
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SKL_ADSPIS_IPC ;
 int SKL_ADSP_REG_ADSPIS ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

bool skl_ipc_int_status(struct sst_dsp *ctx)
{
 return sst_dsp_shim_read_unlocked(ctx,
   SKL_ADSP_REG_ADSPIS) & SKL_ADSPIS_IPC;
}
