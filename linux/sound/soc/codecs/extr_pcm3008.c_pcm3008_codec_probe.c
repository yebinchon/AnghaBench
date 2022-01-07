
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct pcm3008_setup_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcm3008_setup_data {int pdda_pin; int pdad_pin; int dem1_pin; int dem0_pin; } ;


 int EINVAL ;
 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int devm_gpio_request_one (TYPE_1__*,int ,int ,char*) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int) ;
 int pcm3008_dai ;
 int soc_component_dev_pcm3008 ;

__attribute__((used)) static int pcm3008_codec_probe(struct platform_device *pdev)
{
 struct pcm3008_setup_data *setup = pdev->dev.platform_data;
 int ret;

 if (!setup)
  return -EINVAL;
 ret = devm_gpio_request_one(&pdev->dev, setup->dem0_pin,
        GPIOF_OUT_INIT_HIGH, "codec_dem0");
 if (ret != 0)
  return ret;


 ret = devm_gpio_request_one(&pdev->dev, setup->dem1_pin,
        GPIOF_OUT_INIT_LOW, "codec_dem1");
 if (ret != 0)
  return ret;


 ret = devm_gpio_request_one(&pdev->dev, setup->pdad_pin,
        GPIOF_OUT_INIT_LOW, "codec_pdad");
 if (ret != 0)
  return ret;


 ret = devm_gpio_request_one(&pdev->dev, setup->pdda_pin,
        GPIOF_OUT_INIT_LOW, "codec_pdda");
 if (ret != 0)
  return ret;

 return devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_pcm3008, &pcm3008_dai, 1);
}
