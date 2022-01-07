
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;
struct omap_mcpdm {scalar_t__ irq; int * dev; int io_base; TYPE_1__* dma_data; int mutex; } ;
struct TYPE_2__ {char* filter_data; scalar_t__ addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MCPDM_REG_DN_DATA ;
 scalar_t__ MCPDM_REG_UP_DATA ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct omap_mcpdm* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int mutex_init (int *) ;
 int omap_mcpdm_component ;
 int omap_mcpdm_dai ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct omap_mcpdm*) ;
 int sdma_pcm_platform_register (int *,char*,char*) ;

__attribute__((used)) static int asoc_mcpdm_probe(struct platform_device *pdev)
{
 struct omap_mcpdm *mcpdm;
 struct resource *res;
 int ret;

 mcpdm = devm_kzalloc(&pdev->dev, sizeof(struct omap_mcpdm), GFP_KERNEL);
 if (!mcpdm)
  return -ENOMEM;

 platform_set_drvdata(pdev, mcpdm);

 mutex_init(&mcpdm->mutex);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dma");
 if (res == ((void*)0))
  return -ENOMEM;

 mcpdm->dma_data[0].addr = res->start + MCPDM_REG_DN_DATA;
 mcpdm->dma_data[1].addr = res->start + MCPDM_REG_UP_DATA;

 mcpdm->dma_data[0].filter_data = "dn_link";
 mcpdm->dma_data[1].filter_data = "up_link";

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mpu");
 mcpdm->io_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mcpdm->io_base))
  return PTR_ERR(mcpdm->io_base);

 mcpdm->irq = platform_get_irq(pdev, 0);
 if (mcpdm->irq < 0)
  return mcpdm->irq;

 mcpdm->dev = &pdev->dev;

 ret = devm_snd_soc_register_component(&pdev->dev,
            &omap_mcpdm_component,
            &omap_mcpdm_dai, 1);
 if (ret)
  return ret;

 return sdma_pcm_platform_register(&pdev->dev, "dn_link", "up_link");
}
