
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_spdifin {int map; } ;


 int SPDIFIN_CTRL0 ;
 int SPDIFIN_CTRL0_RST_IN ;
 int SPDIFIN_CTRL0_RST_OUT ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct axg_spdifin* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_spdifin_prepare(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct axg_spdifin *priv = snd_soc_dai_get_drvdata(dai);


 regmap_update_bits(priv->map, SPDIFIN_CTRL0,
      SPDIFIN_CTRL0_RST_OUT |
      SPDIFIN_CTRL0_RST_IN,
      0);


 regmap_update_bits(priv->map, SPDIFIN_CTRL0,
      SPDIFIN_CTRL0_RST_OUT, SPDIFIN_CTRL0_RST_OUT);
 regmap_update_bits(priv->map, SPDIFIN_CTRL0,
      SPDIFIN_CTRL0_RST_IN, SPDIFIN_CTRL0_RST_IN);

 return 0;
}
