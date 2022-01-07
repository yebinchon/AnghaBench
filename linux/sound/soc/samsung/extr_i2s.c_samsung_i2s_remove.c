
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_i2s_priv {int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct samsung_i2s_priv* dev_get_drvdata (int *) ;
 int i2s_delete_secondary_device (struct samsung_i2s_priv*) ;
 int i2s_unregister_clock_provider (struct samsung_i2s_priv*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int samsung_i2s_remove(struct platform_device *pdev)
{
 struct samsung_i2s_priv *priv = dev_get_drvdata(&pdev->dev);


 if (!priv)
  return 0;

 pm_runtime_get_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 i2s_unregister_clock_provider(priv);
 i2s_delete_secondary_device(priv);
 clk_disable_unprepare(priv->clk);

 pm_runtime_put_noidle(&pdev->dev);

 return 0;
}
