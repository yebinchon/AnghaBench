
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak4642_priv {int mcko; } ;


 int ak4642_set_mcko (struct snd_soc_component*,int) ;
 int clk_get_rate (int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct ak4642_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4642_dai_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak4642_priv *priv = snd_soc_component_get_drvdata(component);
 u32 rate = clk_get_rate(priv->mcko);

 if (!rate)
  rate = params_rate(params) * 256;

 return ak4642_set_mcko(component, rate);
}
