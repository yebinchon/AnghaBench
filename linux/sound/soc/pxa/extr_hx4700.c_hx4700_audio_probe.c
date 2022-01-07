
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int devm_snd_soc_register_card (int *,TYPE_1__*) ;
 int gpio_free_array (int ,int ) ;
 int gpio_request_array (int ,int ) ;
 int hx4700_audio_gpios ;
 int machine_is_h4700 () ;
 TYPE_1__ snd_soc_card_hx4700 ;

__attribute__((used)) static int hx4700_audio_probe(struct platform_device *pdev)
{
 int ret;

 if (!machine_is_h4700())
  return -ENODEV;

 ret = gpio_request_array(hx4700_audio_gpios,
    ARRAY_SIZE(hx4700_audio_gpios));
 if (ret)
  return ret;

 snd_soc_card_hx4700.dev = &pdev->dev;
 ret = devm_snd_soc_register_card(&pdev->dev, &snd_soc_card_hx4700);
 if (ret)
  gpio_free_array(hx4700_audio_gpios,
    ARRAY_SIZE(hx4700_audio_gpios));

 return ret;
}
