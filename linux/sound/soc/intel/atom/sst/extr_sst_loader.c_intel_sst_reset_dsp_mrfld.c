
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union config_status_reg_mrfld {int full; } ;
struct intel_sst_drv {int dev; int shim; } ;


 int SST_CSR ;
 int dev_dbg (int ,char*,...) ;
 void* sst_shim_read64 (int ,int ) ;
 int sst_shim_write64 (int ,int ,int) ;

int intel_sst_reset_dsp_mrfld(struct intel_sst_drv *sst_drv_ctx)
{
 union config_status_reg_mrfld csr;

 dev_dbg(sst_drv_ctx->dev, "sst: Resetting the DSP in mrfld\n");
 csr.full = sst_shim_read64(sst_drv_ctx->shim, SST_CSR);

 dev_dbg(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

 csr.full |= 0x7;
 sst_shim_write64(sst_drv_ctx->shim, SST_CSR, csr.full);
 csr.full = sst_shim_read64(sst_drv_ctx->shim, SST_CSR);

 dev_dbg(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

 csr.full &= ~(0x1);
 sst_shim_write64(sst_drv_ctx->shim, SST_CSR, csr.full);

 csr.full = sst_shim_read64(sst_drv_ctx->shim, SST_CSR);
 dev_dbg(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);
 return 0;
}
