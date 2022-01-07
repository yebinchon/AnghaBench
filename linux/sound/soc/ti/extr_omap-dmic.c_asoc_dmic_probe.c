
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {char* filter_data; scalar_t__ addr; } ;
struct omap_dmic {int io_base; TYPE_1__ dma_data; int * dev; int fclk; int mutex; int sysclk; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ OMAP_DMIC_DATA_REG ;
 int OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct omap_dmic* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int mutex_init (int *) ;
 int omap_dmic_component ;
 int omap_dmic_dai ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct omap_dmic*) ;
 int sdma_pcm_platform_register (int *,int *,char*) ;

__attribute__((used)) static int asoc_dmic_probe(struct platform_device *pdev)
{
 struct omap_dmic *dmic;
 struct resource *res;
 int ret;

 dmic = devm_kzalloc(&pdev->dev, sizeof(struct omap_dmic), GFP_KERNEL);
 if (!dmic)
  return -ENOMEM;

 platform_set_drvdata(pdev, dmic);
 dmic->dev = &pdev->dev;
 dmic->sysclk = OMAP_DMIC_SYSCLK_SYNC_MUX_CLKS;

 mutex_init(&dmic->mutex);

 dmic->fclk = devm_clk_get(dmic->dev, "fck");
 if (IS_ERR(dmic->fclk)) {
  dev_err(dmic->dev, "cant get fck\n");
  return -ENODEV;
 }

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dma");
 if (!res) {
  dev_err(dmic->dev, "invalid dma memory resource\n");
  return -ENODEV;
 }
 dmic->dma_data.addr = res->start + OMAP_DMIC_DATA_REG;

 dmic->dma_data.filter_data = "up_link";

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mpu");
 dmic->io_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dmic->io_base))
  return PTR_ERR(dmic->io_base);


 ret = devm_snd_soc_register_component(&pdev->dev,
           &omap_dmic_component,
           &omap_dmic_dai, 1);
 if (ret)
  return ret;

 ret = sdma_pcm_platform_register(&pdev->dev, ((void*)0), "up_link");
 if (ret)
  return ret;

 return 0;
}
