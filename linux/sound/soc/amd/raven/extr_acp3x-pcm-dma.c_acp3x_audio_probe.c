
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_11__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct i2s_dev_data {int acp3x_base; int i2s_irq; int * capture_stream; int * play_stream; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int acp3x_deinit (int ) ;
 int acp3x_i2s_component ;
 int acp3x_i2s_dai_driver ;
 int acp3x_init (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct i2s_dev_data*) ;
 int devm_ioremap (TYPE_1__*,int ,int ) ;
 struct i2s_dev_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int ,int ,unsigned int,char*,struct i2s_dev_data*) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int) ;
 int i2s_irq_handler ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int acp3x_audio_probe(struct platform_device *pdev)
{
 int status;
 struct resource *res;
 struct i2s_dev_data *adata;
 unsigned int irqflags;

 if (!pdev->dev.platform_data) {
  dev_err(&pdev->dev, "platform_data not retrieved\n");
  return -ENODEV;
 }
 irqflags = *((unsigned int *)(pdev->dev.platform_data));

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "IORESOURCE_IRQ FAILED\n");
   return -ENODEV;
 }

 adata = devm_kzalloc(&pdev->dev, sizeof(*adata), GFP_KERNEL);
 if (!adata)
  return -ENOMEM;

 adata->acp3x_base = devm_ioremap(&pdev->dev, res->start,
      resource_size(res));

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(&pdev->dev, "IORESOURCE_IRQ FAILED\n");
  return -ENODEV;
 }

 adata->i2s_irq = res->start;
 adata->play_stream = ((void*)0);
 adata->capture_stream = ((void*)0);

 dev_set_drvdata(&pdev->dev, adata);

 status = acp3x_init(adata->acp3x_base);
 if (status)
  return -ENODEV;
 status = devm_snd_soc_register_component(&pdev->dev,
       &acp3x_i2s_component,
       &acp3x_i2s_dai_driver, 1);
 if (status) {
  dev_err(&pdev->dev, "Fail to register acp i2s dai\n");
  goto dev_err;
 }
 status = devm_request_irq(&pdev->dev, adata->i2s_irq, i2s_irq_handler,
      irqflags, "ACP3x_I2S_IRQ", adata);
 if (status) {
  dev_err(&pdev->dev, "ACP3x I2S IRQ request failed\n");
  goto dev_err;
 }

 pm_runtime_set_autosuspend_delay(&pdev->dev, 10000);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 return 0;
dev_err:
 status = acp3x_deinit(adata->acp3x_base);
 if (status)
  dev_err(&pdev->dev, "ACP de-init failed\n");
 else
  dev_info(&pdev->dev, "ACP de-initialized\n");

 return -ENODEV;
}
