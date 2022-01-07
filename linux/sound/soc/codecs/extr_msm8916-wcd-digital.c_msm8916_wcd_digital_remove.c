
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msm8916_wcd_digital_priv {int ahbclk; int mclk; } ;


 int clk_disable_unprepare (int ) ;
 struct msm8916_wcd_digital_priv* dev_get_drvdata (int *) ;

__attribute__((used)) static int msm8916_wcd_digital_remove(struct platform_device *pdev)
{
 struct msm8916_wcd_digital_priv *priv = dev_get_drvdata(&pdev->dev);

 clk_disable_unprepare(priv->mclk);
 clk_disable_unprepare(priv->ahbclk);

 return 0;
}
