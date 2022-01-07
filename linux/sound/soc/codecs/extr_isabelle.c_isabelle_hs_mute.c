
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;


 int BIT (int) ;
 int ISABELLE_DAC1_SOFTRAMP_REG ;
 int snd_soc_component_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int isabelle_hs_mute(struct snd_soc_dai *dai, int mute)
{
 snd_soc_component_update_bits(dai->component, ISABELLE_DAC1_SOFTRAMP_REG,
   BIT(4), (mute ? BIT(4) : 0));

 return 0;
}
