
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sst_pdata {struct sst_hsw* dsp; } ;
struct sst_hsw {int ipc; TYPE_1__* dsp; int dx_context_paddr; int dx_context; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int dma_dev; } ;


 int SST_HSW_DX_CONTEXT_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int sst_dsp_free (TYPE_1__*) ;
 int sst_dsp_reset (TYPE_1__*) ;
 int sst_fw_free_all (TYPE_1__*) ;
 int sst_ipc_fini (int *) ;

void sst_hsw_dsp_free(struct device *dev, struct sst_pdata *pdata)
{
 struct sst_hsw *hsw = pdata->dsp;

 sst_dsp_reset(hsw->dsp);
 sst_fw_free_all(hsw->dsp);
 dma_free_coherent(hsw->dsp->dma_dev, SST_HSW_DX_CONTEXT_SIZE,
   hsw->dx_context, hsw->dx_context_paddr);
 sst_dsp_free(hsw->dsp);
 sst_ipc_fini(&hsw->ipc);
}
