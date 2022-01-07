
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs42xx8_priv {int tx_channels; int regmap; } ;


 int CS42XX8_DACMUTE ;
 int CS42XX8_DACMUTE_ALL ;
 int regmap_write (int ,int ,int) ;
 struct cs42xx8_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs42xx8_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 struct cs42xx8_priv *cs42xx8 = snd_soc_component_get_drvdata(component);
 u8 dac_unmute = cs42xx8->tx_channels ?
          ~((0x1 << cs42xx8->tx_channels) - 1) : 0;

 regmap_write(cs42xx8->regmap, CS42XX8_DACMUTE,
       mute ? CS42XX8_DACMUTE_ALL : dac_unmute);

 return 0;
}
