
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct madera_priv {struct madera* madera; } ;
struct madera {int regmap; } ;


 int ffs (unsigned int) ;
 int madera_aif_warn (struct snd_soc_dai*,char*) ;
 int regmap_write (int ,unsigned int,int) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void madera_set_channels_to_mask(struct snd_soc_dai *dai,
     unsigned int base,
     int channels, unsigned int mask)
{
 struct snd_soc_component *component = dai->component;
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera *madera = priv->madera;
 int slot, i;

 for (i = 0; i < channels; ++i) {
  slot = ffs(mask) - 1;
  if (slot < 0)
   return;

  regmap_write(madera->regmap, base + i, slot);

  mask &= ~(1 << slot);
 }

 if (mask)
  madera_aif_warn(dai, "Too many channels in TDM mask\n");
}
