
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct adau1701 {int regmap; } ;


 int ADAU1701_DSPCTRL ;
 unsigned int ADAU1701_DSPCTRL_DAM ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1701_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 unsigned int mask = ADAU1701_DSPCTRL_DAM;
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);
 unsigned int val;

 if (mute)
  val = 0;
 else
  val = mask;

 regmap_update_bits(adau1701->regmap, ADAU1701_DSPCTRL, mask, val);

 return 0;
}
