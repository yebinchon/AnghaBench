
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai_link {TYPE_2__* codecs; TYPE_1__* cpus; } ;
struct snow_priv {int clk_i2s_bus; struct snd_soc_dai_link dai_link; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {int of_node; } ;


 int clk_put (int ) ;
 int of_node_put (int ) ;
 struct snow_priv* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_of_put_dai_link_codecs (struct snd_soc_dai_link*) ;

__attribute__((used)) static int snow_remove(struct platform_device *pdev)
{
 struct snow_priv *priv = platform_get_drvdata(pdev);
 struct snd_soc_dai_link *link = &priv->dai_link;

 of_node_put(link->cpus->of_node);
 of_node_put(link->codecs->of_node);
 snd_soc_of_put_dai_link_codecs(link);

 clk_put(priv->clk_i2s_bus);

 return 0;
}
