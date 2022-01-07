
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct kirkwood_dma_data {int clk; int extclk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct kirkwood_dma_data* dev_get_drvdata (int *) ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int kirkwood_i2s_dev_remove(struct platform_device *pdev)
{
 struct kirkwood_dma_data *priv = dev_get_drvdata(&pdev->dev);

 snd_soc_unregister_component(&pdev->dev);
 if (!IS_ERR(priv->extclk))
  clk_disable_unprepare(priv->extclk);
 clk_disable_unprepare(priv->clk);

 return 0;
}
