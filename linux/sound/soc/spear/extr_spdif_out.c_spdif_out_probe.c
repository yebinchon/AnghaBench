
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spear_spdif_platform_data {int filter; int dma_params; } ;
struct TYPE_2__ {int max_burst; int addr_width; scalar_t__ addr; int data; } ;
struct spdif_out_dev {int config; TYPE_1__ dma_params; int clk; int io_base; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int dev; } ;


 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ SPDIF_OUT_FIFO_DATA ;
 struct spear_spdif_platform_data* dev_get_platdata (int *) ;
 int dev_set_drvdata (int *,struct spdif_out_dev*) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct spdif_out_dev* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int devm_spear_pcm_platform_register (int *,int *,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spdif_out_component ;
 int spdif_out_dai ;

__attribute__((used)) static int spdif_out_probe(struct platform_device *pdev)
{
 struct spdif_out_dev *host;
 struct spear_spdif_platform_data *pdata;
 struct resource *res;
 int ret;

 host = devm_kzalloc(&pdev->dev, sizeof(*host), GFP_KERNEL);
 if (!host)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 host->io_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(host->io_base))
  return PTR_ERR(host->io_base);

 host->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(host->clk))
  return PTR_ERR(host->clk);

 pdata = dev_get_platdata(&pdev->dev);

 host->dma_params.data = pdata->dma_params;
 host->dma_params.addr = res->start + SPDIF_OUT_FIFO_DATA;
 host->dma_params.max_burst = 16;
 host->dma_params.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;

 dev_set_drvdata(&pdev->dev, host);

 ret = devm_snd_soc_register_component(&pdev->dev, &spdif_out_component,
           &spdif_out_dai, 1);
 if (ret)
  return ret;

 return devm_spear_pcm_platform_register(&pdev->dev, &host->config,
      pdata->filter);
}
