
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;


 int ES8328_DACCONTROL3 ;
 int ES8328_DACCONTROL3_DACMUTE ;
 int snd_soc_component_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int es8328_mute(struct snd_soc_dai *dai, int mute)
{
 return snd_soc_component_update_bits(dai->component, ES8328_DACCONTROL3,
   ES8328_DACCONTROL3_DACMUTE,
   mute ? ES8328_DACCONTROL3_DACMUTE : 0);
}
