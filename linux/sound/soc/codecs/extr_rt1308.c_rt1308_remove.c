
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt1308_priv {int regmap; } ;


 int RT1308_RESET ;
 int regmap_write (int ,int ,int ) ;
 struct rt1308_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt1308_remove(struct snd_soc_component *component)
{
 struct rt1308_priv *rt1308 = snd_soc_component_get_drvdata(component);

 regmap_write(rt1308->regmap, RT1308_RESET, 0);
}
