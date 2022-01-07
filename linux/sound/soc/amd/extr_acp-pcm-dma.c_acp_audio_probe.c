
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_10__ {int * platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct audio_drv_data {int asic_type; int acp_mmio; int * capture_i2sbt_stream; int * play_i2sbt_stream; int * capture_i2ssp_stream; int * play_i2ssp_stream; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acp_asoc_platform ;
 int acp_init (int ,int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_set_drvdata (TYPE_1__*,struct audio_drv_data*) ;
 struct audio_drv_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_1__*,int ,int ,int ,char*,TYPE_1__*) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int ) ;
 int dma_irq_handler ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;

__attribute__((used)) static int acp_audio_probe(struct platform_device *pdev)
{
 int status;
 struct audio_drv_data *audio_drv_data;
 struct resource *res;
 const u32 *pdata = pdev->dev.platform_data;

 if (!pdata) {
  dev_err(&pdev->dev, "Missing platform data\n");
  return -ENODEV;
 }

 audio_drv_data = devm_kzalloc(&pdev->dev, sizeof(struct audio_drv_data),
          GFP_KERNEL);
 if (!audio_drv_data)
  return -ENOMEM;

 audio_drv_data->acp_mmio = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(audio_drv_data->acp_mmio))
  return PTR_ERR(audio_drv_data->acp_mmio);







 audio_drv_data->play_i2ssp_stream = ((void*)0);
 audio_drv_data->capture_i2ssp_stream = ((void*)0);
 audio_drv_data->play_i2sbt_stream = ((void*)0);
 audio_drv_data->capture_i2sbt_stream = ((void*)0);

 audio_drv_data->asic_type = *pdata;

 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res) {
  dev_err(&pdev->dev, "IORESOURCE_IRQ FAILED\n");
  return -ENODEV;
 }

 status = devm_request_irq(&pdev->dev, res->start, dma_irq_handler,
      0, "ACP_IRQ", &pdev->dev);
 if (status) {
  dev_err(&pdev->dev, "ACP IRQ request failed\n");
  return status;
 }

 dev_set_drvdata(&pdev->dev, audio_drv_data);


 status = acp_init(audio_drv_data->acp_mmio, audio_drv_data->asic_type);
 if (status) {
  dev_err(&pdev->dev, "ACP Init failed status:%d\n", status);
  return status;
 }

 status = devm_snd_soc_register_component(&pdev->dev,
       &acp_asoc_platform, ((void*)0), 0);
 if (status != 0) {
  dev_err(&pdev->dev, "Fail to register ALSA platform device\n");
  return status;
 }

 pm_runtime_set_autosuspend_delay(&pdev->dev, 10000);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 return status;
}
