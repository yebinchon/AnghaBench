
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_pdata {scalar_t__ resindex_dma_base; scalar_t__ dma_base; void* fw_size; int fw_base; void* pcicfg_size; int pcicfg_base; void* lpe_size; int lpe_base; int irq; int dma_size; int dma_engine; struct device* dma_dev; int id; } ;
struct sst_acpi_priv {int pdev_mach; struct snd_soc_acpi_mach* mach; struct sst_acpi_desc* desc; struct sst_pdata sst_pdata; } ;
struct sst_acpi_desc {scalar_t__ resindex_dma_base; scalar_t__ irqindex_host_ipc; scalar_t__ resindex_lpe_base; scalar_t__ resindex_pcicfg_base; scalar_t__ resindex_fw_base; int dma_size; int dma_engine; int sst_id; int machines; } ;
struct snd_soc_acpi_mach {int fw_filename; int drv_name; struct sst_pdata* pdata; } ;
struct resource {int start; } ;
struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int acpi_match_table; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 struct acpi_device_id* acpi_match_device (int ,struct device*) ;
 int dev_err (struct device*,char*) ;
 struct sst_acpi_priv* devm_kzalloc (struct device*,int,int ) ;
 int platform_device_register_data (struct device*,int ,int,struct snd_soc_acpi_mach*,int) ;
 int platform_device_unregister (int ) ;
 int platform_get_irq (struct platform_device*,scalar_t__) ;
 struct resource* platform_get_resource (struct platform_device*,int ,scalar_t__) ;
 int platform_set_drvdata (struct platform_device*,struct sst_acpi_priv*) ;
 int request_firmware_nowait (int ,int,int ,struct device*,int ,struct platform_device*,int ) ;
 void* resource_size (struct resource*) ;
 struct snd_soc_acpi_mach* snd_soc_acpi_find_machine (int ) ;
 int sst_acpi_fw_cb ;

__attribute__((used)) static int sst_acpi_probe(struct platform_device *pdev)
{
 const struct acpi_device_id *id;
 struct device *dev = &pdev->dev;
 struct sst_acpi_priv *sst_acpi;
 struct sst_pdata *sst_pdata;
 struct snd_soc_acpi_mach *mach;
 struct sst_acpi_desc *desc;
 struct resource *mmio;
 int ret = 0;

 sst_acpi = devm_kzalloc(dev, sizeof(*sst_acpi), GFP_KERNEL);
 if (sst_acpi == ((void*)0))
  return -ENOMEM;

 id = acpi_match_device(dev->driver->acpi_match_table, dev);
 if (!id)
  return -ENODEV;

 desc = (struct sst_acpi_desc *)id->driver_data;
 mach = snd_soc_acpi_find_machine(desc->machines);
 if (mach == ((void*)0)) {
  dev_err(dev, "No matching ASoC machine driver found\n");
  return -ENODEV;
 }

 sst_pdata = &sst_acpi->sst_pdata;
 sst_pdata->id = desc->sst_id;
 sst_pdata->dma_dev = dev;
 sst_acpi->desc = desc;
 sst_acpi->mach = mach;

 sst_pdata->resindex_dma_base = desc->resindex_dma_base;
 if (desc->resindex_dma_base >= 0) {
  sst_pdata->dma_engine = desc->dma_engine;
  sst_pdata->dma_base = desc->resindex_dma_base;
  sst_pdata->dma_size = desc->dma_size;
 }

 if (desc->irqindex_host_ipc >= 0)
  sst_pdata->irq = platform_get_irq(pdev, desc->irqindex_host_ipc);

 if (desc->resindex_lpe_base >= 0) {
  mmio = platform_get_resource(pdev, IORESOURCE_MEM,
          desc->resindex_lpe_base);
  if (mmio) {
   sst_pdata->lpe_base = mmio->start;
   sst_pdata->lpe_size = resource_size(mmio);
  }
 }

 if (desc->resindex_pcicfg_base >= 0) {
  mmio = platform_get_resource(pdev, IORESOURCE_MEM,
          desc->resindex_pcicfg_base);
  if (mmio) {
   sst_pdata->pcicfg_base = mmio->start;
   sst_pdata->pcicfg_size = resource_size(mmio);
  }
 }

 if (desc->resindex_fw_base >= 0) {
  mmio = platform_get_resource(pdev, IORESOURCE_MEM,
          desc->resindex_fw_base);
  if (mmio) {
   sst_pdata->fw_base = mmio->start;
   sst_pdata->fw_size = resource_size(mmio);
  }
 }

 platform_set_drvdata(pdev, sst_acpi);
 mach->pdata = sst_pdata;


 sst_acpi->pdev_mach =
  platform_device_register_data(dev, mach->drv_name, -1,
           mach, sizeof(*mach));
 if (IS_ERR(sst_acpi->pdev_mach))
  return PTR_ERR(sst_acpi->pdev_mach);


 ret = request_firmware_nowait(THIS_MODULE, 1, mach->fw_filename,
          dev, GFP_KERNEL, pdev, sst_acpi_fw_cb);
 if (ret)
  platform_device_unregister(sst_acpi->pdev_mach);

 return ret;
}
