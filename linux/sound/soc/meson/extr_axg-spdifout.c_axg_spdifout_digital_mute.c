
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct axg_spdifout {int map; } ;


 int SPDIFOUT_CTRL0 ;
 int SPDIFOUT_CTRL0_VSET ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct axg_spdifout* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_spdifout_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct axg_spdifout *priv = snd_soc_dai_get_drvdata(dai);


 regmap_update_bits(priv->map, SPDIFOUT_CTRL0, SPDIFOUT_CTRL0_VSET,
      mute ? SPDIFOUT_CTRL0_VSET : 0);

 return 0;
}
