
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ak5386_priv {int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct ak5386_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak5386_soc_probe(struct snd_soc_component *component)
{
 struct ak5386_priv *priv = snd_soc_component_get_drvdata(component);
 return regulator_bulk_enable(ARRAY_SIZE(priv->supplies), priv->supplies);
}
