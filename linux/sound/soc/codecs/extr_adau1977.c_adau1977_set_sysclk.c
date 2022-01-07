
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {unsigned int mask; } ;
struct adau1977 {int sysclk_src; unsigned int sysclk; TYPE_1__ constraints; int regmap; } ;


 unsigned int ADAU1977_PLL_CLK_S ;
 unsigned int ADAU1977_RATE_CONSTRAINT_MASK_32000 ;
 unsigned int ADAU1977_RATE_CONSTRAINT_MASK_44100 ;
 unsigned int ADAU1977_RATE_CONSTRAINT_MASK_48000 ;
 unsigned int ADAU1977_RATE_CONSTRAINT_MASK_LRCLK ;
 int ADAU1977_REG_PLL ;
 int ADAU1977_SYSCLK ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 scalar_t__ adau1977_check_sysclk (unsigned int,int) ;
 unsigned int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adau1977* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1977_set_sysclk(struct snd_soc_component *component,
 int clk_id, int source, unsigned int freq, int dir)
{
 struct adau1977 *adau1977 = snd_soc_component_get_drvdata(component);
 unsigned int mask = 0;
 unsigned int clk_src;
 unsigned int ret;

 if (dir != SND_SOC_CLOCK_IN)
  return -EINVAL;

 if (clk_id != ADAU1977_SYSCLK)
  return -EINVAL;

 switch (source) {
 case 128:
  clk_src = 0;
  break;
 case 129:
  clk_src = ADAU1977_PLL_CLK_S;
  break;
 default:
  return -EINVAL;
 }

 if (freq != 0 && source == 128) {
  if (freq < 4000000 || freq > 36864000)
   return -EINVAL;

  if (adau1977_check_sysclk(freq, 32000))
   mask |= ADAU1977_RATE_CONSTRAINT_MASK_32000;
  if (adau1977_check_sysclk(freq, 44100))
   mask |= ADAU1977_RATE_CONSTRAINT_MASK_44100;
  if (adau1977_check_sysclk(freq, 48000))
   mask |= ADAU1977_RATE_CONSTRAINT_MASK_48000;

  if (mask == 0)
   return -EINVAL;
 } else if (source == 129) {
  mask = ADAU1977_RATE_CONSTRAINT_MASK_LRCLK;
 }

 ret = regmap_update_bits(adau1977->regmap, ADAU1977_REG_PLL,
  ADAU1977_PLL_CLK_S, clk_src);
 if (ret)
  return ret;

 adau1977->constraints.mask = mask;
 adau1977->sysclk_src = source;
 adau1977->sysclk = freq;

 return 0;
}
