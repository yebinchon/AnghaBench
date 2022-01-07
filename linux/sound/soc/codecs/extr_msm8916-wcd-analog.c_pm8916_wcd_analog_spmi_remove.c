
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8916_wcd_analog_priv {int mclk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct pm8916_wcd_analog_priv* dev_get_drvdata (int *) ;

__attribute__((used)) static int pm8916_wcd_analog_spmi_remove(struct platform_device *pdev)
{
 struct pm8916_wcd_analog_priv *priv = dev_get_drvdata(&pdev->dev);

 clk_disable_unprepare(priv->mclk);

 return 0;
}
