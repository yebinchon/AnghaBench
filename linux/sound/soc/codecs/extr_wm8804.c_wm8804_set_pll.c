
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8804_priv {int dev; int regmap; int mclk_div; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pll_div {int n; int prescale; int freqmode; int mclkdiv; int k; } ;


 int WM8804_PLL1 ;
 int WM8804_PLL2 ;
 int WM8804_PLL3 ;
 int WM8804_PLL4 ;
 int WM8804_PLL5 ;
 int WM8804_PWRDN ;
 int pll_factors (struct pll_div*,unsigned int,unsigned int,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int regmap_update_bits_check (int ,int ,int,int,int*) ;
 struct wm8804_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8804_set_pll(struct snd_soc_dai *dai, int pll_id,
     int source, unsigned int freq_in,
     unsigned int freq_out)
{
 struct snd_soc_component *component = dai->component;
 struct wm8804_priv *wm8804 = snd_soc_component_get_drvdata(component);
 bool change;

 if (!freq_in || !freq_out) {

  regmap_update_bits_check(wm8804->regmap, WM8804_PWRDN,
      0x1, 0x1, &change);
  if (change)
   pm_runtime_put(wm8804->dev);
 } else {
  int ret;
  struct pll_div pll_div;

  ret = pll_factors(&pll_div, freq_out, freq_in,
      wm8804->mclk_div);
  if (ret)
   return ret;


  regmap_update_bits_check(wm8804->regmap, WM8804_PWRDN,
      0x1, 0x1, &change);
  if (!change)
   pm_runtime_get_sync(wm8804->dev);


  snd_soc_component_update_bits(component, WM8804_PLL4, 0xf | 0x10,
        pll_div.n | (pll_div.prescale << 4));

  snd_soc_component_update_bits(component, WM8804_PLL5, 0x3 | 0x8,
        pll_div.freqmode | (pll_div.mclkdiv << 3));

  snd_soc_component_write(component, WM8804_PLL1, pll_div.k & 0xff);
  snd_soc_component_write(component, WM8804_PLL2, (pll_div.k >> 8) & 0xff);
  snd_soc_component_write(component, WM8804_PLL3, pll_div.k >> 16);


  snd_soc_component_update_bits(component, WM8804_PWRDN, 0x1, 0);
 }

 return 0;
}
