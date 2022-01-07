
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sspa_priv {int sysclk; int audio_clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 int clk_put (int ) ;
 struct sspa_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int asoc_mmp_sspa_remove(struct platform_device *pdev)
{
 struct sspa_priv *priv = platform_get_drvdata(pdev);

 clk_disable(priv->audio_clk);
 clk_put(priv->audio_clk);
 clk_put(priv->sysclk);
 return 0;
}
