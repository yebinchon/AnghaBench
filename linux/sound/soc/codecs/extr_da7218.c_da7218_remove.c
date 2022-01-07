
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct da7218_priv {int supplies; } ;


 int DA7218_NUM_SUPPLIES ;
 int regulator_bulk_disable (int ,int ) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void da7218_remove(struct snd_soc_component *component)
{
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);

 regulator_bulk_disable(DA7218_NUM_SUPPLIES, da7218->supplies);
}
