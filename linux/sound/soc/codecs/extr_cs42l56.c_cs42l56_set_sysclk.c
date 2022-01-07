
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs42l56_private {unsigned int mclk; void* mclk_div2; void* mclk_prediv; } ;


 int CS42L56_CLKCTL_1 ;
 void* CS42L56_MCLK_DIV2 ;
 int CS42L56_MCLK_DIV2_MASK ;
 void* CS42L56_MCLK_PREDIV ;
 int CS42L56_MCLK_PREDIV_MASK ;
 int EINVAL ;
 struct cs42l56_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,void*) ;

__attribute__((used)) static int cs42l56_set_sysclk(struct snd_soc_dai *codec_dai,
   int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs42l56_private *cs42l56 = snd_soc_component_get_drvdata(component);

 switch (freq) {
 case 130:
 case 129:
 case 128:
  cs42l56->mclk_div2 = 0;
  cs42l56->mclk_prediv = 0;
  break;
 case 136:
 case 135:
 case 134:
  cs42l56->mclk_div2 = CS42L56_MCLK_DIV2;
  cs42l56->mclk_prediv = 0;
  break;
 case 133:
 case 132:
 case 131:
  cs42l56->mclk_div2 = CS42L56_MCLK_DIV2;
  cs42l56->mclk_prediv = CS42L56_MCLK_PREDIV;
  break;
 default:
  return -EINVAL;
 }
 cs42l56->mclk = freq;

 snd_soc_component_update_bits(component, CS42L56_CLKCTL_1,
       CS42L56_MCLK_PREDIV_MASK,
    cs42l56->mclk_prediv);
 snd_soc_component_update_bits(component, CS42L56_CLKCTL_1,
       CS42L56_MCLK_DIV2_MASK,
    cs42l56->mclk_div2);

 return 0;
}
