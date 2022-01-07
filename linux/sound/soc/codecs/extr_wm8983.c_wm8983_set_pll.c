
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pll_div {int div2; int n; int k; } ;


 int WM8983_PLLEN ;
 int WM8983_PLLEN_MASK ;
 int WM8983_PLL_K_1 ;
 int WM8983_PLL_K_2 ;
 int WM8983_PLL_K_3 ;
 int WM8983_PLL_N ;
 int WM8983_PLL_PRESCALE_SHIFT ;
 int WM8983_POWER_MANAGEMENT_1 ;
 int pll_factors (struct pll_div*,unsigned int,unsigned int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8983_set_pll(struct snd_soc_dai *dai, int pll_id,
     int source, unsigned int freq_in,
     unsigned int freq_out)
{
 int ret;
 struct snd_soc_component *component;
 struct pll_div pll_div;

 component = dai->component;
 if (!freq_in || !freq_out) {

  snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
        WM8983_PLLEN_MASK, 0);
  return 0;
 } else {
  ret = pll_factors(&pll_div, freq_out * 4 * 2, freq_in);
  if (ret)
   return ret;


  snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
        WM8983_PLLEN_MASK, 0);


  snd_soc_component_write(component, WM8983_PLL_N,
   (pll_div.div2 << WM8983_PLL_PRESCALE_SHIFT)
   | pll_div.n);

  snd_soc_component_write(component, WM8983_PLL_K_3, pll_div.k & 0x1ff);
  snd_soc_component_write(component, WM8983_PLL_K_2, (pll_div.k >> 9) & 0x1ff);
  snd_soc_component_write(component, WM8983_PLL_K_1, (pll_div.k >> 18));

  snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
     WM8983_PLLEN_MASK, WM8983_PLLEN);
 }

 return 0;
}
