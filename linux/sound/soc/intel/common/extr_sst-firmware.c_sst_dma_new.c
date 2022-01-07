
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_pdata {int resindex_dma_base; int dma_engine; int irq; scalar_t__ dma_size; scalar_t__ dma_base; } ;
struct TYPE_2__ {scalar_t__ lpe_base; } ;
struct sst_dsp {int fw_use_dma; int dev; struct sst_dma* dma; int dma_dev; TYPE_1__ addr; struct sst_pdata* pdata; } ;
struct sst_dma {int chip; struct sst_dsp* sst; } ;
struct resource {int flags; scalar_t__ end; scalar_t__ start; } ;
typedef int mem ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;

 int dev_err (int ,char*,...) ;
 int devm_kfree (int ,struct sst_dma*) ;
 struct sst_dma* devm_kzalloc (int ,int,int ) ;
 int dw_probe (int ,struct resource*,int ) ;
 int memset (struct resource*,int ,int) ;

__attribute__((used)) static int sst_dma_new(struct sst_dsp *sst)
{
 struct sst_pdata *sst_pdata = sst->pdata;
 struct sst_dma *dma;
 struct resource mem;
 int ret = 0;

 if (sst->pdata->resindex_dma_base == -1)

  return 0;



 switch (sst->pdata->dma_engine) {
 case 128:
  break;
 default:
  dev_err(sst->dev, "error: invalid DMA engine %d\n",
   sst->pdata->dma_engine);
  return -EINVAL;
 }

 dma = devm_kzalloc(sst->dev, sizeof(struct sst_dma), GFP_KERNEL);
 if (!dma)
  return -ENOMEM;

 dma->sst = sst;

 memset(&mem, 0, sizeof(mem));

 mem.start = sst->addr.lpe_base + sst_pdata->dma_base;
 mem.end = sst->addr.lpe_base + sst_pdata->dma_base + sst_pdata->dma_size - 1;
 mem.flags = IORESOURCE_MEM;


 dma->chip = dw_probe(sst->dma_dev, &mem, sst_pdata->irq);
 if (IS_ERR(dma->chip)) {
  dev_err(sst->dev, "error: DMA device register failed\n");
  ret = PTR_ERR(dma->chip);
  goto err_dma_dev;
 }

 sst->dma = dma;
 sst->fw_use_dma = 1;
 return 0;

err_dma_dev:
 devm_kfree(sst->dev, dma);
 return ret;
}
