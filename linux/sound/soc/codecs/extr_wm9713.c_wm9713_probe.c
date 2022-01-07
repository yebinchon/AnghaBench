
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9713_priv {int mfd_pdata; int lock; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_get_platdata (int *) ;
 struct wm9713_priv* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct wm9713_priv*) ;
 int soc_component_dev_wm9713 ;
 int wm9713_dai ;

__attribute__((used)) static int wm9713_probe(struct platform_device *pdev)
{
 struct wm9713_priv *wm9713;

 wm9713 = devm_kzalloc(&pdev->dev, sizeof(*wm9713), GFP_KERNEL);
 if (wm9713 == ((void*)0))
  return -ENOMEM;

 mutex_init(&wm9713->lock);

 wm9713->mfd_pdata = dev_get_platdata(&pdev->dev);
 platform_set_drvdata(pdev, wm9713);

 return devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_wm9713, wm9713_dai, ARRAY_SIZE(wm9713_dai));
}
