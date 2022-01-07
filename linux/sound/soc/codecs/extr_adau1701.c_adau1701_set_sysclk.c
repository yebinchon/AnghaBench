
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau1701 {unsigned int sysclk; int regmap; } ;




 int ADAU1701_OSCIPOW ;
 unsigned int ADAU1701_OSCIPOW_OPD ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1701_set_sysclk(struct snd_soc_component *component, int clk_id,
 int source, unsigned int freq, int dir)
{
 unsigned int val;
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
  val = 0x0;
  break;
 case 129:
  val = ADAU1701_OSCIPOW_OPD;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(adau1701->regmap, ADAU1701_OSCIPOW,
      ADAU1701_OSCIPOW_OPD, val);
 adau1701->sysclk = freq;

 return 0;
}
