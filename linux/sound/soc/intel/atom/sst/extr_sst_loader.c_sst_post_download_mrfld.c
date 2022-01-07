
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sst_drv {int dev; int ddr_base; int dram; } ;


 int dev_dbg (int ,char*) ;
 int sst_dccm_config_write (int ,int ) ;

void sst_post_download_mrfld(struct intel_sst_drv *ctx)
{
 sst_dccm_config_write(ctx->dram, ctx->ddr_base);
 dev_dbg(ctx->dev, "config written to DCCM\n");
}
