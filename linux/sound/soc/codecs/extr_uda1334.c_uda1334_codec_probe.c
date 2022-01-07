
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uda1334_priv {void* deemph; void* mute; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*,int) ;
 void* devm_gpiod_get (int *,char*,int ) ;
 struct uda1334_priv* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int platform_set_drvdata (struct platform_device*,struct uda1334_priv*) ;
 int soc_component_dev_uda1334 ;
 int uda1334_dai ;

__attribute__((used)) static int uda1334_codec_probe(struct platform_device *pdev)
{
 struct uda1334_priv *uda1334;
 int ret;

 uda1334 = devm_kzalloc(&pdev->dev, sizeof(struct uda1334_priv),
          GFP_KERNEL);
 if (!uda1334)
  return -ENOMEM;

 platform_set_drvdata(pdev, uda1334);

 uda1334->mute = devm_gpiod_get(&pdev->dev, "nxp,mute", GPIOD_OUT_LOW);
 if (IS_ERR(uda1334->mute)) {
  ret = PTR_ERR(uda1334->mute);
  dev_err(&pdev->dev, "Failed to get mute line: %d\n", ret);
  return ret;
 }

 uda1334->deemph = devm_gpiod_get(&pdev->dev, "nxp,deemph", GPIOD_OUT_LOW);
 if (IS_ERR(uda1334->deemph)) {
  ret = PTR_ERR(uda1334->deemph);
  dev_err(&pdev->dev, "Failed to get deemph line: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&pdev->dev,
           &soc_component_dev_uda1334,
           &uda1334_dai, 1);
 if (ret < 0)
  dev_err(&pdev->dev, "Failed to register component: %d\n", ret);

 return ret;
}
