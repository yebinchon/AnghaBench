
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int soc_component_dev_twl6040 ;
 int twl6040_dai ;

__attribute__((used)) static int twl6040_codec_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
          &soc_component_dev_twl6040,
          twl6040_dai, ARRAY_SIZE(twl6040_dai));
}
