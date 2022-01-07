
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; int component; } ;
struct adau1373_dai {unsigned int sysclk; int clk_src; } ;
struct adau1373 {int regmap; struct adau1373_dai* dais; } ;


 int ADAU1373_BCLKDIV (size_t) ;
 int ADAU1373_BCLKDIV_SOURCE ;


 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct adau1373* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int adau1373_set_dai_sysclk(struct snd_soc_dai *dai,
 int clk_id, unsigned int freq, int dir)
{
 struct adau1373 *adau1373 = snd_soc_component_get_drvdata(dai->component);
 struct adau1373_dai *adau1373_dai = &adau1373->dais[dai->id];

 switch (clk_id) {
 case 129:
 case 128:
  break;
 default:
  return -EINVAL;
 }

 adau1373_dai->sysclk = freq;
 adau1373_dai->clk_src = clk_id;

 regmap_update_bits(adau1373->regmap, ADAU1373_BCLKDIV(dai->id),
  ADAU1373_BCLKDIV_SOURCE, clk_id << 5);

 return 0;
}
