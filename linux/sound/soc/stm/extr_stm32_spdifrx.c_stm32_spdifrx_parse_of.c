
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stm32_spdifrx_data {scalar_t__ irq; int kclk; int phys_addr; int base; struct regmap_config const* regmap_conf; } ;
struct resource {int start; } ;
struct regmap_config {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int stm32_spdifrx_ids ;

__attribute__((used)) static int stm32_spdifrx_parse_of(struct platform_device *pdev,
      struct stm32_spdifrx_data *spdifrx)
{
 struct device_node *np = pdev->dev.of_node;
 const struct of_device_id *of_id;
 struct resource *res;

 if (!np)
  return -ENODEV;

 of_id = of_match_device(stm32_spdifrx_ids, &pdev->dev);
 if (of_id)
  spdifrx->regmap_conf =
   (const struct regmap_config *)of_id->data;
 else
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 spdifrx->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(spdifrx->base))
  return PTR_ERR(spdifrx->base);

 spdifrx->phys_addr = res->start;

 spdifrx->kclk = devm_clk_get(&pdev->dev, "kclk");
 if (IS_ERR(spdifrx->kclk)) {
  dev_err(&pdev->dev, "Could not get kclk\n");
  return PTR_ERR(spdifrx->kclk);
 }

 spdifrx->irq = platform_get_irq(pdev, 0);
 if (spdifrx->irq < 0)
  return spdifrx->irq;

 return 0;
}
