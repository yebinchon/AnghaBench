
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct ad193x_priv {int regmap; } ;


 int AD193X_DAC_CTRL2 ;
 int AD193X_DAC_MASTER_MUTE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct ad193x_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int ad193x_mute(struct snd_soc_dai *dai, int mute)
{
 struct ad193x_priv *ad193x = snd_soc_component_get_drvdata(dai->component);

 if (mute)
  regmap_update_bits(ad193x->regmap, AD193X_DAC_CTRL2,
        AD193X_DAC_MASTER_MUTE,
        AD193X_DAC_MASTER_MUTE);
 else
  regmap_update_bits(ad193x->regmap, AD193X_DAC_CTRL2,
        AD193X_DAC_MASTER_MUTE, 0);

 return 0;
}
