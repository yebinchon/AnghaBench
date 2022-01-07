
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AIC31XX_DACMUTE ;
 int AIC31XX_DACMUTE_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int aic31xx_dac_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;

 if (mute) {
  snd_soc_component_update_bits(component, AIC31XX_DACMUTE,
        AIC31XX_DACMUTE_MASK,
        AIC31XX_DACMUTE_MASK);
 } else {
  snd_soc_component_update_bits(component, AIC31XX_DACMUTE,
        AIC31XX_DACMUTE_MASK, 0x0);
 }

 return 0;
}
