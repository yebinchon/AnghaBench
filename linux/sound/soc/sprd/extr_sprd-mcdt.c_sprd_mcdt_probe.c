
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_mcdt_dev {int lock; int * dev; int base; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct sprd_mcdt_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct sprd_mcdt_dev*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sprd_mcdt_dev*) ;
 int spin_lock_init (int *) ;
 int sprd_mcdt_init_chans (struct sprd_mcdt_dev*,struct resource*) ;
 int sprd_mcdt_irq_handler ;

__attribute__((used)) static int sprd_mcdt_probe(struct platform_device *pdev)
{
 struct sprd_mcdt_dev *mcdt;
 struct resource *res;
 int ret, irq;

 mcdt = devm_kzalloc(&pdev->dev, sizeof(*mcdt), GFP_KERNEL);
 if (!mcdt)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mcdt->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mcdt->base))
  return PTR_ERR(mcdt->base);

 mcdt->dev = &pdev->dev;
 spin_lock_init(&mcdt->lock);
 platform_set_drvdata(pdev, mcdt);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = devm_request_irq(&pdev->dev, irq, sprd_mcdt_irq_handler,
          0, "sprd-mcdt", mcdt);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request MCDT IRQ\n");
  return ret;
 }

 sprd_mcdt_init_chans(mcdt, res);

 return 0;
}
