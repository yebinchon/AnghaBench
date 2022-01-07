
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct ak4613_priv {int cnt; } ;


 int ak4613_hw_constraints (struct ak4613_priv*,int ) ;
 struct ak4613_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4613_dai_startup(struct snd_pcm_substream *substream,
         struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak4613_priv *priv = snd_soc_component_get_drvdata(component);

 priv->cnt++;

 ak4613_hw_constraints(priv, substream->runtime);

 return 0;
}
