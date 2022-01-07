
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int k; int pre_scale; int n; } ;


 int WM8940_CLOCK ;
 int WM8940_PLLK1 ;
 int WM8940_PLLK2 ;
 int WM8940_PLLK3 ;
 int WM8940_PLLN ;
 int WM8940_POWER1 ;
 TYPE_1__ pll_div ;
 int pll_factors (unsigned int,unsigned int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8940_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
  int source, unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 reg;


 reg = snd_soc_component_read32(component, WM8940_POWER1);
 snd_soc_component_write(component, WM8940_POWER1, reg & 0x1df);

 if (freq_in == 0 || freq_out == 0) {

  reg = snd_soc_component_read32(component, WM8940_CLOCK);
  snd_soc_component_write(component, WM8940_CLOCK, reg & 0x0ff);

  snd_soc_component_write(component, WM8940_PLLN, (1 << 7));
  return 0;
 }


 pll_factors(freq_out*4, freq_in);
 if (pll_div.k)
  snd_soc_component_write(component, WM8940_PLLN,
        (pll_div.pre_scale << 4) | pll_div.n | (1 << 6));
 else
  snd_soc_component_write(component, WM8940_PLLN,
        (pll_div.pre_scale << 4) | pll_div.n);
 snd_soc_component_write(component, WM8940_PLLK1, pll_div.k >> 18);
 snd_soc_component_write(component, WM8940_PLLK2, (pll_div.k >> 9) & 0x1ff);
 snd_soc_component_write(component, WM8940_PLLK3, pll_div.k & 0x1ff);

 reg = snd_soc_component_read32(component, WM8940_POWER1);
 snd_soc_component_write(component, WM8940_POWER1, reg | 0x020);


 reg = snd_soc_component_read32(component, WM8940_CLOCK);
 snd_soc_component_write(component, WM8940_CLOCK, reg | 0x100);

 return 0;
}
