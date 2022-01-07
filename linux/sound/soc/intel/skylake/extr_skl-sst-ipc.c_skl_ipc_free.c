
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_generic_ipc {int dsp; } ;


 int SKL_ADSP_REG_HIPCCTL ;
 int SKL_ADSP_REG_HIPCCTL_BUSY ;
 int SKL_ADSP_REG_HIPCCTL_DONE ;
 int sst_dsp_shim_update_bits (int ,int ,int ,int ) ;
 int sst_ipc_fini (struct sst_generic_ipc*) ;

void skl_ipc_free(struct sst_generic_ipc *ipc)
{

 sst_dsp_shim_update_bits(ipc->dsp, SKL_ADSP_REG_HIPCCTL,
  SKL_ADSP_REG_HIPCCTL_DONE, 0);


 sst_dsp_shim_update_bits(ipc->dsp, SKL_ADSP_REG_HIPCCTL,
  SKL_ADSP_REG_HIPCCTL_BUSY, 0);

 sst_ipc_fini(ipc);
}
