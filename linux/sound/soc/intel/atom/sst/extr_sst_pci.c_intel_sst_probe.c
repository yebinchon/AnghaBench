
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sst_platform_info {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_3__ {struct sst_platform_info* platform_data; } ;
struct pci_dev {int irq; int device; TYPE_1__ dev; } ;
struct intel_sst_drv {char* dev_id; int dev; int pci; int firmware_name; int irq_num; struct sst_platform_info* pdata; } ;


 int dev_dbg (TYPE_1__*,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct intel_sst_drv*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int snprintf (int ,int,char*,char*,char*,char*) ;
 int sst_alloc_drv_context (struct intel_sst_drv**,TYPE_1__*,int ) ;
 int sst_configure_runtime_pm (struct intel_sst_drv*) ;
 int sst_context_cleanup (struct intel_sst_drv*) ;
 int sst_context_init (struct intel_sst_drv*) ;
 int sst_platform_get_resources (struct intel_sst_drv*) ;

__attribute__((used)) static int intel_sst_probe(struct pci_dev *pci,
   const struct pci_device_id *pci_id)
{
 int ret = 0;
 struct intel_sst_drv *sst_drv_ctx;
 struct sst_platform_info *sst_pdata = pci->dev.platform_data;

 dev_dbg(&pci->dev, "Probe for DID %x\n", pci->device);
 ret = sst_alloc_drv_context(&sst_drv_ctx, &pci->dev, pci->device);
 if (ret < 0)
  return ret;

 sst_drv_ctx->pdata = sst_pdata;
 sst_drv_ctx->irq_num = pci->irq;
 snprintf(sst_drv_ctx->firmware_name, sizeof(sst_drv_ctx->firmware_name),
   "%s%04x%s", "fw_sst_",
   sst_drv_ctx->dev_id, ".bin");

 ret = sst_context_init(sst_drv_ctx);
 if (ret < 0)
  return ret;


 ret = pcim_enable_device(pci);
 if (ret) {
  dev_err(sst_drv_ctx->dev,
   "device can't be enabled. Returned err: %d\n", ret);
  goto do_free_drv_ctx;
 }
 sst_drv_ctx->pci = pci_dev_get(pci);
 ret = sst_platform_get_resources(sst_drv_ctx);
 if (ret < 0)
  goto do_free_drv_ctx;

 pci_set_drvdata(pci, sst_drv_ctx);
 sst_configure_runtime_pm(sst_drv_ctx);

 return ret;

do_free_drv_ctx:
 sst_context_cleanup(sst_drv_ctx);
 dev_err(sst_drv_ctx->dev, "Probe failed with %d\n", ret);
 return ret;
}
