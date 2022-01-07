
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int SGTL5000_CHIP_DIG_POWER ;
 int SGTL5000_I2S_IN_POWERUP ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int sgtl5000_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 i2s_pwr = SGTL5000_I2S_IN_POWERUP;






 snd_soc_component_update_bits(component, SGTL5000_CHIP_DIG_POWER,
   i2s_pwr, mute ? 0 : i2s_pwr);

 return 0;
}
