
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct snd_soc_component {int dummy; } ;
struct adau1373 {int regmap; } ;


 int ADAU1373_CLK_SRC_DIV (int) ;
 int ADAU1373_DPLL_CTRL (int) ;


 int ADAU1373_PLL_CTRL1 (int) ;
 int ADAU1373_PLL_CTRL2 (int) ;
 int ADAU1373_PLL_CTRL3 (int) ;
 int ADAU1373_PLL_CTRL4 (int) ;
 int ADAU1373_PLL_CTRL5 (int) ;
 int ADAU1373_PLL_CTRL6 (int) ;
 int ADAU1373_PLL_CTRL6_DPLL_BYPASS ;
 int EINVAL ;
 int adau_calc_pll_cfg (unsigned int,unsigned int,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 struct adau1373* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1373_set_pll(struct snd_soc_component *component, int pll_id,
 int source, unsigned int freq_in, unsigned int freq_out)
{
 struct adau1373 *adau1373 = snd_soc_component_get_drvdata(component);
 unsigned int dpll_div = 0;
 uint8_t pll_regs[5];
 int ret;

 switch (pll_id) {
 case 141:
 case 140:
  break;
 default:
  return -EINVAL;
 }

 switch (source) {
 case 139:
 case 138:
 case 137:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 136:
 case 135:
 case 134:
 case 133:
  break;
 default:
  return -EINVAL;
 }

 if (freq_in < 7813 || freq_in > 27000000)
  return -EINVAL;

 if (freq_out < 45158000 || freq_out > 49152000)
  return -EINVAL;



 while (freq_in < 8000000) {
  freq_in *= 2;
  dpll_div++;
 }

 ret = adau_calc_pll_cfg(freq_in, freq_out, pll_regs);
 if (ret)
  return -EINVAL;

 if (dpll_div) {
  dpll_div = 11 - dpll_div;
  regmap_update_bits(adau1373->regmap, ADAU1373_PLL_CTRL6(pll_id),
   ADAU1373_PLL_CTRL6_DPLL_BYPASS, 0);
 } else {
  regmap_update_bits(adau1373->regmap, ADAU1373_PLL_CTRL6(pll_id),
   ADAU1373_PLL_CTRL6_DPLL_BYPASS,
   ADAU1373_PLL_CTRL6_DPLL_BYPASS);
 }

 regmap_write(adau1373->regmap, ADAU1373_DPLL_CTRL(pll_id),
  (source << 4) | dpll_div);
 regmap_write(adau1373->regmap, ADAU1373_PLL_CTRL1(pll_id), pll_regs[0]);
 regmap_write(adau1373->regmap, ADAU1373_PLL_CTRL2(pll_id), pll_regs[1]);
 regmap_write(adau1373->regmap, ADAU1373_PLL_CTRL3(pll_id), pll_regs[2]);
 regmap_write(adau1373->regmap, ADAU1373_PLL_CTRL4(pll_id), pll_regs[3]);
 regmap_write(adau1373->regmap, ADAU1373_PLL_CTRL5(pll_id), pll_regs[4]);


 regmap_update_bits(adau1373->regmap, ADAU1373_CLK_SRC_DIV(pll_id), 0x3f, 0x09);

 return 0;
}
