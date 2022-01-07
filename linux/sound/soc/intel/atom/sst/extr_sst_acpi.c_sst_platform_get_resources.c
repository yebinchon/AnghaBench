
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int end; scalar_t__ start; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ mailbox_start; } ;
struct intel_sst_drv {int irq_num; TYPE_3__* pdata; int dev; void* ddr; scalar_t__ ddr_base; int ddr_end; TYPE_1__ info; scalar_t__ mailbox_add; void* mailbox; scalar_t__ shim_phy_add; void* shim; void* dram; scalar_t__ dram_base; scalar_t__ dram_end; void* iram; scalar_t__ iram_base; scalar_t__ iram_end; } ;
struct TYPE_6__ {TYPE_2__* res_info; } ;
struct TYPE_5__ {int acpi_ipc_irq_index; int acpi_ddr_index; scalar_t__ mbox_size; scalar_t__ mbox_offset; scalar_t__ shim_phy_addr; scalar_t__ shim_size; scalar_t__ shim_offset; scalar_t__ dram_size; scalar_t__ dram_offset; scalar_t__ iram_size; scalar_t__ iram_offset; int acpi_lpe_res_index; } ;


 int EIO ;
 int IORESOURCE_MEM ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,unsigned int,...) ;
 void* devm_ioremap_nocache (int ,scalar_t__,scalar_t__) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 scalar_t__ resource_size (struct resource*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int sst_platform_get_resources(struct intel_sst_drv *ctx)
{
 struct resource *rsrc;
 struct platform_device *pdev = to_platform_device(ctx->dev);



 rsrc = platform_get_resource(pdev, IORESOURCE_MEM,
     ctx->pdata->res_info->acpi_lpe_res_index);
 if (!rsrc) {
  dev_err(ctx->dev, "Invalid SHIM base from IFWI\n");
  return -EIO;
 }
 dev_info(ctx->dev, "LPE base: %#x size:%#x", (unsigned int) rsrc->start,
     (unsigned int)resource_size(rsrc));

 ctx->iram_base = rsrc->start + ctx->pdata->res_info->iram_offset;
 ctx->iram_end = ctx->iram_base + ctx->pdata->res_info->iram_size - 1;
 dev_info(ctx->dev, "IRAM base: %#x", ctx->iram_base);
 ctx->iram = devm_ioremap_nocache(ctx->dev, ctx->iram_base,
      ctx->pdata->res_info->iram_size);
 if (!ctx->iram) {
  dev_err(ctx->dev, "unable to map IRAM\n");
  return -EIO;
 }

 ctx->dram_base = rsrc->start + ctx->pdata->res_info->dram_offset;
 ctx->dram_end = ctx->dram_base + ctx->pdata->res_info->dram_size - 1;
 dev_info(ctx->dev, "DRAM base: %#x", ctx->dram_base);
 ctx->dram = devm_ioremap_nocache(ctx->dev, ctx->dram_base,
      ctx->pdata->res_info->dram_size);
 if (!ctx->dram) {
  dev_err(ctx->dev, "unable to map DRAM\n");
  return -EIO;
 }

 ctx->shim_phy_add = rsrc->start + ctx->pdata->res_info->shim_offset;
 dev_info(ctx->dev, "SHIM base: %#x", ctx->shim_phy_add);
 ctx->shim = devm_ioremap_nocache(ctx->dev, ctx->shim_phy_add,
     ctx->pdata->res_info->shim_size);
 if (!ctx->shim) {
  dev_err(ctx->dev, "unable to map SHIM\n");
  return -EIO;
 }


 ctx->shim_phy_add = ctx->pdata->res_info->shim_phy_addr;


 ctx->mailbox_add = rsrc->start + ctx->pdata->res_info->mbox_offset;
 dev_info(ctx->dev, "Mailbox base: %#x", ctx->mailbox_add);
 ctx->mailbox = devm_ioremap_nocache(ctx->dev, ctx->mailbox_add,
         ctx->pdata->res_info->mbox_size);
 if (!ctx->mailbox) {
  dev_err(ctx->dev, "unable to map mailbox\n");
  return -EIO;
 }


 ctx->mailbox_add = ctx->info.mailbox_start;

 rsrc = platform_get_resource(pdev, IORESOURCE_MEM,
     ctx->pdata->res_info->acpi_ddr_index);
 if (!rsrc) {
  dev_err(ctx->dev, "Invalid DDR base from IFWI\n");
  return -EIO;
 }
 ctx->ddr_base = rsrc->start;
 ctx->ddr_end = rsrc->end;
 dev_info(ctx->dev, "DDR base: %#x", ctx->ddr_base);
 ctx->ddr = devm_ioremap_nocache(ctx->dev, ctx->ddr_base,
     resource_size(rsrc));
 if (!ctx->ddr) {
  dev_err(ctx->dev, "unable to map DDR\n");
  return -EIO;
 }


 ctx->irq_num = platform_get_irq(pdev,
    ctx->pdata->res_info->acpi_ipc_irq_index);
 if (ctx->irq_num <= 0)
  return ctx->irq_num < 0 ? ctx->irq_num : -EIO;

 return 0;
}
