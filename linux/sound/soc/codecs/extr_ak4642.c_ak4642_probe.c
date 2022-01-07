
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ak4642_priv {scalar_t__ mcko; } ;


 int ak4642_set_mcko (struct snd_soc_component*,int ) ;
 int clk_get_rate (scalar_t__) ;
 struct ak4642_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4642_probe(struct snd_soc_component *component)
{
 struct ak4642_priv *priv = snd_soc_component_get_drvdata(component);

 if (priv->mcko)
  ak4642_set_mcko(component, clk_get_rate(priv->mcko));

 return 0;
}
