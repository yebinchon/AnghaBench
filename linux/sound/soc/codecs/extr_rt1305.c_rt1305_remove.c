
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt1305_priv {int regmap; } ;


 int rt1305_reset (int ) ;
 struct rt1305_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt1305_remove(struct snd_soc_component *component)
{
 struct rt1305_priv *rt1305 = snd_soc_component_get_drvdata(component);

 rt1305_reset(rt1305->regmap);
}
