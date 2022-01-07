
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wm8994_priv {int wm8994; int fw_lock; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_get_drvdata (int ) ;
 struct wm8994_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct wm8994_priv*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_idle (TYPE_1__*) ;
 int soc_component_dev_wm8994 ;
 int wm8994_dai ;

__attribute__((used)) static int wm8994_probe(struct platform_device *pdev)
{
 struct wm8994_priv *wm8994;

 wm8994 = devm_kzalloc(&pdev->dev, sizeof(struct wm8994_priv),
         GFP_KERNEL);
 if (wm8994 == ((void*)0))
  return -ENOMEM;
 platform_set_drvdata(pdev, wm8994);

 mutex_init(&wm8994->fw_lock);

 wm8994->wm8994 = dev_get_drvdata(pdev->dev.parent);

 pm_runtime_enable(&pdev->dev);
 pm_runtime_idle(&pdev->dev);

 return devm_snd_soc_register_component(&pdev->dev, &soc_component_dev_wm8994,
   wm8994_dai, ARRAY_SIZE(wm8994_dai));
}
