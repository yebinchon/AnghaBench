
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lochnagar_sc_priv {int mclk; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,char*) ;
 struct lochnagar_sc_priv* devm_kzalloc (int *,int,int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int lochnagar_sc_dai ;
 int lochnagar_sc_driver ;
 int platform_set_drvdata (struct platform_device*,struct lochnagar_sc_priv*) ;

__attribute__((used)) static int lochnagar_sc_probe(struct platform_device *pdev)
{
 struct lochnagar_sc_priv *priv;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->mclk = devm_clk_get(&pdev->dev, "mclk");
 if (IS_ERR(priv->mclk)) {
  ret = PTR_ERR(priv->mclk);
  dev_err(&pdev->dev, "Failed to get MCLK: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, priv);

 return devm_snd_soc_register_component(&pdev->dev,
            &lochnagar_sc_driver,
            lochnagar_sc_dai,
            ARRAY_SIZE(lochnagar_sc_dai));
}
