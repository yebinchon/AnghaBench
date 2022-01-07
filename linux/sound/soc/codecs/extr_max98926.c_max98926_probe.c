
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct max98926_priv {int regmap; struct snd_soc_component* component; } ;


 int MAX98926_DOUT_HIZ_CFG4 ;
 int regmap_write (int ,int ,int) ;
 struct max98926_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max98926_probe(struct snd_soc_component *component)
{
 struct max98926_priv *max98926 = snd_soc_component_get_drvdata(component);

 max98926->component = component;


 regmap_write(max98926->regmap, MAX98926_DOUT_HIZ_CFG4, 0xF0);
 return 0;
}
