
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct adau {unsigned int pll_freq; int pll_regs; int regmap; } ;


 int ADAU17X1_PLL_CONTROL ;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int adau_calc_pll_cfg (unsigned int,unsigned int,int ) ;
 int regmap_raw_write (int ,int ,int ,int ) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau17x1_set_dai_pll(struct snd_soc_dai *dai, int pll_id,
 int source, unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_component *component = dai->component;
 struct adau *adau = snd_soc_component_get_drvdata(component);
 int ret;

 if (freq_in < 8000000 || freq_in > 27000000)
  return -EINVAL;

 ret = adau_calc_pll_cfg(freq_in, freq_out, adau->pll_regs);
 if (ret < 0)
  return ret;


 ret = regmap_raw_write(adau->regmap, ADAU17X1_PLL_CONTROL,
   adau->pll_regs, ARRAY_SIZE(adau->pll_regs));
 if (ret)
  return ret;

 adau->pll_freq = freq_out;

 return 0;
}
