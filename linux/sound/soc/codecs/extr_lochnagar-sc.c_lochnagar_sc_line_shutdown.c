
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct lochnagar_sc_priv {int mclk; } ;


 int clk_disable_unprepare (int ) ;
 struct lochnagar_sc_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void lochnagar_sc_line_shutdown(struct snd_pcm_substream *substream,
           struct snd_soc_dai *dai)
{
 struct snd_soc_component *comp = dai->component;
 struct lochnagar_sc_priv *priv = snd_soc_component_get_drvdata(comp);

 clk_disable_unprepare(priv->mclk);
}
