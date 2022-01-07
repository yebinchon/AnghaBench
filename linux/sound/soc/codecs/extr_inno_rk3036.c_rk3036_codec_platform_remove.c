
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3036_codec_priv {int pclk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct rk3036_codec_priv* dev_get_drvdata (int *) ;

__attribute__((used)) static int rk3036_codec_platform_remove(struct platform_device *pdev)
{
 struct rk3036_codec_priv *priv = dev_get_drvdata(&pdev->dev);

 clk_disable_unprepare(priv->pclk);

 return 0;
}
