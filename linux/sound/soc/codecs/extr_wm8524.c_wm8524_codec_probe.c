
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8524_priv {int mute; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_gpiod_get (int *,char*,int ) ;
 struct wm8524_priv* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int platform_set_drvdata (struct platform_device*,struct wm8524_priv*) ;
 int soc_component_dev_wm8524 ;
 int wm8524_dai ;

__attribute__((used)) static int wm8524_codec_probe(struct platform_device *pdev)
{
 struct wm8524_priv *wm8524;
 int ret;

 wm8524 = devm_kzalloc(&pdev->dev, sizeof(struct wm8524_priv),
        GFP_KERNEL);
 if (wm8524 == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, wm8524);

 wm8524->mute = devm_gpiod_get(&pdev->dev, "wlf,mute", GPIOD_OUT_LOW);
 if (IS_ERR(wm8524->mute)) {
  ret = PTR_ERR(wm8524->mute);
  dev_err(&pdev->dev, "Failed to get mute line: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&pdev->dev,
   &soc_component_dev_wm8524, &wm8524_dai, 1);
 if (ret < 0)
  dev_err(&pdev->dev, "Failed to register component: %d\n", ret);

 return ret;
}
