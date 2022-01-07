
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AK4671_PLL ;
 int AK4671_PLL_11_2896MHZ ;
 int AK4671_PLL_12MHZ ;
 int AK4671_PLL_12_288MHZ ;
 int AK4671_PLL_13MHZ ;
 int AK4671_PLL_13_5MHZ ;
 int AK4671_PLL_19_2MHZ ;
 int AK4671_PLL_24MHZ ;
 int AK4671_PLL_26MHZ ;
 int AK4671_PLL_27MHZ ;
 int AK4671_PLL_MODE_SELECT0 ;
 int EINVAL ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int ak4671_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
  unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 u8 pll;

 pll = snd_soc_component_read32(component, AK4671_PLL_MODE_SELECT0);
 pll &= ~AK4671_PLL;

 switch (freq) {
 case 11289600:
  pll |= AK4671_PLL_11_2896MHZ;
  break;
 case 12000000:
  pll |= AK4671_PLL_12MHZ;
  break;
 case 12288000:
  pll |= AK4671_PLL_12_288MHZ;
  break;
 case 13000000:
  pll |= AK4671_PLL_13MHZ;
  break;
 case 13500000:
  pll |= AK4671_PLL_13_5MHZ;
  break;
 case 19200000:
  pll |= AK4671_PLL_19_2MHZ;
  break;
 case 24000000:
  pll |= AK4671_PLL_24MHZ;
  break;
 case 26000000:
  pll |= AK4671_PLL_26MHZ;
  break;
 case 27000000:
  pll |= AK4671_PLL_27MHZ;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, AK4671_PLL_MODE_SELECT0, pll);

 return 0;
}
