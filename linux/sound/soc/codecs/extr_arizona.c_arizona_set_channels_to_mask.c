
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 int arizona_aif_warn (struct snd_soc_dai*,char*) ;
 int ffs (unsigned int) ;
 int regmap_write (int ,unsigned int,int) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void arizona_set_channels_to_mask(struct snd_soc_dai *dai,
      unsigned int base,
      int channels, unsigned int mask)
{
 struct snd_soc_component *component = dai->component;
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 int slot, i;

 for (i = 0; i < channels; ++i) {
  slot = ffs(mask) - 1;
  if (slot < 0)
   return;

  regmap_write(arizona->regmap, base + i, slot);

  mask &= ~(1 << slot);
 }

 if (mask)
  arizona_aif_warn(dai, "Too many channels in TDM mask\n");
}
