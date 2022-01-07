
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uda134x_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int UDA134X_STATUS0 ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct uda134x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static inline void uda134x_reset(struct snd_soc_component *component)
{
 struct uda134x_priv *uda134x = snd_soc_component_get_drvdata(component);
 unsigned int mask = 1<<6;

 regmap_update_bits(uda134x->regmap, UDA134X_STATUS0, mask, mask);
 msleep(1);
 regmap_update_bits(uda134x->regmap, UDA134X_STATUS0, mask, 0);
}
