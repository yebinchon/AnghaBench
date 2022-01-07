
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int * dai_link; } ;
struct odroid_priv {int clk_i2s_bus; int sclk_i2s; TYPE_1__ card; } ;


 int clk_put (int ) ;
 struct odroid_priv* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_of_put_dai_link_codecs (int *) ;

__attribute__((used)) static int odroid_audio_remove(struct platform_device *pdev)
{
 struct odroid_priv *priv = platform_get_drvdata(pdev);

 snd_soc_of_put_dai_link_codecs(&priv->card.dai_link[1]);
 clk_put(priv->sclk_i2s);
 clk_put(priv->clk_i2s_bus);

 return 0;
}
