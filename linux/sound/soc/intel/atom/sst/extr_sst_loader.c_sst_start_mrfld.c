
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xt_snoop; } ;
union config_status_reg_mrfld {int full; TYPE_1__ part; } ;
struct intel_sst_drv {int dev; int shim; } ;


 int SST_CSR ;
 int dev_dbg (int ,char*,...) ;
 void* sst_shim_read64 (int ,int ) ;
 int sst_shim_write64 (int ,int ,int) ;

int sst_start_mrfld(struct intel_sst_drv *sst_drv_ctx)
{
 union config_status_reg_mrfld csr;

 dev_dbg(sst_drv_ctx->dev, "sst: Starting the DSP in mrfld LALALALA\n");
 csr.full = sst_shim_read64(sst_drv_ctx->shim, SST_CSR);
 dev_dbg(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

 csr.full |= 0x7;
 sst_shim_write64(sst_drv_ctx->shim, SST_CSR, csr.full);

 csr.full = sst_shim_read64(sst_drv_ctx->shim, SST_CSR);
 dev_dbg(sst_drv_ctx->dev, "value:0x%llx\n", csr.full);

 csr.part.xt_snoop = 1;
 csr.full &= ~(0x5);
 sst_shim_write64(sst_drv_ctx->shim, SST_CSR, csr.full);

 csr.full = sst_shim_read64(sst_drv_ctx->shim, SST_CSR);
 dev_dbg(sst_drv_ctx->dev, "sst: Starting the DSP_merrifield:%llx\n",
   csr.full);
 return 0;
}
