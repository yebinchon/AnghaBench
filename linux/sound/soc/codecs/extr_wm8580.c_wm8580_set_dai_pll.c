
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_state {unsigned int in; unsigned int out; } ;
struct wm8580_priv {struct pll_state b; struct pll_state a; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct _pll_div {int k; int n; int prescale; int postscale; int freqmode; } ;
typedef int pll_div ;


 int ENODEV ;

 scalar_t__ WM8580_PLLA1 ;
 scalar_t__ WM8580_PLLA2 ;
 scalar_t__ WM8580_PLLA3 ;
 scalar_t__ WM8580_PLLA4 ;

 int WM8580_PWRDN2 ;
 unsigned int WM8580_PWRDN2_PLLAPD ;
 unsigned int WM8580_PWRDN2_PLLBPD ;
 int memset (struct _pll_div*,int ,int) ;
 int pll_factors (struct _pll_div*,unsigned int,unsigned int) ;
 struct wm8580_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,scalar_t__) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,unsigned int) ;

__attribute__((used)) static int wm8580_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
  int source, unsigned int freq_in, unsigned int freq_out)
{
 int offset;
 struct snd_soc_component *component = codec_dai->component;
 struct wm8580_priv *wm8580 = snd_soc_component_get_drvdata(component);
 struct pll_state *state;
 struct _pll_div pll_div;
 unsigned int reg;
 unsigned int pwr_mask;
 int ret;




 memset(&pll_div, 0, sizeof(pll_div));

 switch (pll_id) {
 case 129:
  state = &wm8580->a;
  offset = 0;
  pwr_mask = WM8580_PWRDN2_PLLAPD;
  break;
 case 128:
  state = &wm8580->b;
  offset = 4;
  pwr_mask = WM8580_PWRDN2_PLLBPD;
  break;
 default:
  return -ENODEV;
 }

 if (freq_in && freq_out) {
  ret = pll_factors(&pll_div, freq_out, freq_in);
  if (ret != 0)
   return ret;
 }

 state->in = freq_in;
 state->out = freq_out;




 snd_soc_component_update_bits(component, WM8580_PWRDN2, pwr_mask, pwr_mask);

 if (!freq_in || !freq_out)
  return 0;

 snd_soc_component_write(component, WM8580_PLLA1 + offset, pll_div.k & 0x1ff);
 snd_soc_component_write(component, WM8580_PLLA2 + offset, (pll_div.k >> 9) & 0x1ff);
 snd_soc_component_write(component, WM8580_PLLA3 + offset,
       (pll_div.k >> 18 & 0xf) | (pll_div.n << 4));

 reg = snd_soc_component_read32(component, WM8580_PLLA4 + offset);
 reg &= ~0x1b;
 reg |= pll_div.prescale | pll_div.postscale << 1 |
  pll_div.freqmode << 3;

 snd_soc_component_write(component, WM8580_PLLA4 + offset, reg);


 snd_soc_component_update_bits(component, WM8580_PWRDN2, pwr_mask, 0);

 return 0;
}
