
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;


 int BIT (int) ;
 int LM49453_P0_DAC_DSP_REG ;
 int snd_soc_component_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int lm49453_lo_mute(struct snd_soc_dai *dai, int mute)
{
 snd_soc_component_update_bits(dai->component, LM49453_P0_DAC_DSP_REG, BIT(3)|BIT(2),
       (mute ? (BIT(3)|BIT(2)) : 0));
 return 0;
}
