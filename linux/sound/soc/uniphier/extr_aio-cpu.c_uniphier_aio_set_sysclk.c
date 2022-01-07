
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio {int plldiv; int pll_out; int pll_in; TYPE_2__* chip; } ;
struct snd_soc_dai {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int num_plls; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;
 int AUD_PLL_A1 ;
 int AUD_PLL_A2 ;
 int AUD_PLL_APLL ;
 int AUD_PLL_F1 ;
 int AUD_PLL_F2 ;
 int AUD_PLL_HSC0 ;
 int AUD_PLL_RX0 ;
 int AUD_PLL_USB0 ;
 int EINVAL ;
 int ENOTSUPP ;
 int SND_SOC_CLOCK_OUT ;
 int dev_err (struct device*,char*,unsigned int) ;
 int find_divider (struct uniphier_aio*,int,unsigned int) ;
 struct uniphier_aio* uniphier_priv (struct snd_soc_dai*) ;

__attribute__((used)) static int uniphier_aio_set_sysclk(struct snd_soc_dai *dai, int clk_id,
       unsigned int freq, int dir)
{
 struct uniphier_aio *aio = uniphier_priv(dai);
 struct device *dev = &aio->chip->pdev->dev;
 bool pll_auto = 0;
 int pll_id, div_id;

 switch (clk_id) {
 case 130:
  return -ENOTSUPP;
 case 137:
  pll_id = AUD_PLL_A1;
  break;
 case 133:
  pll_id = AUD_PLL_F1;
  break;
 case 136:
  pll_id = AUD_PLL_A2;
  break;
 case 132:
  pll_id = AUD_PLL_F2;
  break;
 case 138:
  pll_id = AUD_PLL_A1;
  pll_auto = 1;
  break;
 case 134:
  pll_id = AUD_PLL_F1;
  pll_auto = 1;
  break;
 case 135:
  pll_id = AUD_PLL_APLL;
  break;
 case 129:
  pll_id = AUD_PLL_RX0;
  break;
 case 128:
  pll_id = AUD_PLL_USB0;
  break;
 case 131:
  pll_id = AUD_PLL_HSC0;
  break;
 default:
  dev_err(dev, "Sysclk(%d) is not supported\n", clk_id);
  return -EINVAL;
 }

 if (pll_auto) {
  for (pll_id = 0; pll_id < aio->chip->num_plls; pll_id++) {
   div_id = find_divider(aio, pll_id, freq);
   if (div_id >= 0) {
    aio->plldiv = div_id;
    break;
   }
  }
  if (pll_id == aio->chip->num_plls) {
   dev_err(dev, "Sysclk frequency is not supported(%d)\n",
    freq);
   return -EINVAL;
  }
 }

 if (dir == SND_SOC_CLOCK_OUT)
  aio->pll_out = pll_id;
 else
  aio->pll_in = pll_id;

 return 0;
}
