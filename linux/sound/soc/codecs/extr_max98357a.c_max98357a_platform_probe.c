
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct max98357a_priv {scalar_t__ sdmode_delay; int sdmode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (int *,char*) ;
 int dev_set_drvdata (int *,struct max98357a_priv*) ;
 int device_property_read_u32 (int *,char*,scalar_t__*) ;
 int devm_gpiod_get_optional (int *,char*,int ) ;
 struct max98357a_priv* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int max98357a_component_driver ;
 int max98357a_dai_driver ;

__attribute__((used)) static int max98357a_platform_probe(struct platform_device *pdev)
{
 struct max98357a_priv *max98357a;
 int ret;

 max98357a = devm_kzalloc(&pdev->dev, sizeof(*max98357a), GFP_KERNEL);
 if (!max98357a)
  return -ENOMEM;

 max98357a->sdmode = devm_gpiod_get_optional(&pdev->dev,
    "sdmode", GPIOD_OUT_LOW);
 if (IS_ERR(max98357a->sdmode))
  return PTR_ERR(max98357a->sdmode);

 ret = device_property_read_u32(&pdev->dev, "sdmode-delay",
     &max98357a->sdmode_delay);
 if (ret) {
  max98357a->sdmode_delay = 0;
  dev_dbg(&pdev->dev,
   "no optional property 'sdmode-delay' found, "
   "default: no delay\n");
 }

 dev_set_drvdata(&pdev->dev, max98357a);

 return devm_snd_soc_register_component(&pdev->dev,
   &max98357a_component_driver,
   &max98357a_dai_driver, 1);
}
