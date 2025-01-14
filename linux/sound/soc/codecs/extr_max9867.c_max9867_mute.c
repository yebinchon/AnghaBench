
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct max9867_priv {int regmap; } ;


 int MAX9867_DACLEVEL ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct max9867_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max9867_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct max9867_priv *max9867 = snd_soc_component_get_drvdata(component);

 return regmap_update_bits(max9867->regmap, MAX9867_DACLEVEL,
      1 << 6, !!mute << 6);
}
