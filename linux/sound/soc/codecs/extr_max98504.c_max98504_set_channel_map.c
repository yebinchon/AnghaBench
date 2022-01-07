
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; } ;
struct regmap {int dummy; } ;
struct max98504_priv {struct regmap* regmap; } ;




 int MAX98504_MEASUREMENT_ENABLE ;
 int MAX98504_PCM_TX_CHANNEL_SOURCES ;
 int MAX98504_PDM_TX_CONTROL ;
 int WARN_ON (int) ;
 int regmap_write (struct regmap*,int ,int) ;
 struct max98504_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int max98504_set_channel_map(struct snd_soc_dai *dai,
  unsigned int tx_num, unsigned int *tx_slot,
  unsigned int rx_num, unsigned int *rx_slot)
{
 struct max98504_priv *max98504 = snd_soc_dai_get_drvdata(dai);
 struct regmap *map = max98504->regmap;
 unsigned int i, sources = 0;

 for (i = 0; i < tx_num; i++)
  if (tx_slot[i])
   sources |= (1 << i);

 switch (dai->id) {
 case 129:
  regmap_write(map, MAX98504_PCM_TX_CHANNEL_SOURCES,
        sources);
  break;

 case 128:
  regmap_write(map, MAX98504_PDM_TX_CONTROL, sources);
  break;
 default:
  WARN_ON(1);
 }

 regmap_write(map, MAX98504_MEASUREMENT_ENABLE, sources ? 0x3 : 0x01);

 return 0;
}
