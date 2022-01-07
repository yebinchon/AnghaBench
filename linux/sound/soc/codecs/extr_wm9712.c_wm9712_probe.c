
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9712_priv {int mfd_pdata; int lock; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_get_platdata (int *) ;
 struct wm9712_priv* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct wm9712_priv*) ;
 int soc_component_dev_wm9712 ;
 int wm9712_dai ;

__attribute__((used)) static int wm9712_probe(struct platform_device *pdev)
{
 struct wm9712_priv *wm9712;

 wm9712 = devm_kzalloc(&pdev->dev, sizeof(*wm9712), GFP_KERNEL);
 if (wm9712 == ((void*)0))
  return -ENOMEM;

 mutex_init(&wm9712->lock);

 wm9712->mfd_pdata = dev_get_platdata(&pdev->dev);
 platform_set_drvdata(pdev, wm9712);

 return devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_wm9712, wm9712_dai, ARRAY_SIZE(wm9712_dai));
}
