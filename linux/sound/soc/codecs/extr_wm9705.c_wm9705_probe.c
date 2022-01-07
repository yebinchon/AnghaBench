
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9705_priv {int mfd_pdata; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_get_platdata (int *) ;
 struct wm9705_priv* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm9705_priv*) ;
 int soc_component_dev_wm9705 ;
 int wm9705_dai ;

__attribute__((used)) static int wm9705_probe(struct platform_device *pdev)
{
 struct wm9705_priv *wm9705;

 wm9705 = devm_kzalloc(&pdev->dev, sizeof(*wm9705), GFP_KERNEL);
 if (wm9705 == ((void*)0))
  return -ENOMEM;

 wm9705->mfd_pdata = dev_get_platdata(&pdev->dev);
 platform_set_drvdata(pdev, wm9705);

 return devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_wm9705, wm9705_dai, ARRAY_SIZE(wm9705_dai));
}
