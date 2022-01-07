
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8995_priv {TYPE_1__* fll; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct fll_div {int outdiv; int fll_fratio; int n; int clk_ref_div; int k; } ;
struct TYPE_2__ {int src; unsigned int in; unsigned int out; } ;


 int EINVAL ;
 int WM8995_AIF1CLK_ENA ;
 int WM8995_AIF1CLK_ENA_MASK ;
 scalar_t__ WM8995_AIF1_CLOCKING_1 ;
 int WM8995_AIF2CLK_ENA ;
 int WM8995_AIF2CLK_ENA_MASK ;
 scalar_t__ WM8995_AIF2_CLOCKING_1 ;

 scalar_t__ WM8995_FLL1_CONTROL_1 ;
 scalar_t__ WM8995_FLL1_CONTROL_2 ;
 scalar_t__ WM8995_FLL1_CONTROL_3 ;
 scalar_t__ WM8995_FLL1_CONTROL_4 ;
 scalar_t__ WM8995_FLL1_CONTROL_5 ;
 int WM8995_FLL1_ENA ;
 int WM8995_FLL1_ENA_MASK ;
 int WM8995_FLL1_FRATIO_MASK ;
 int WM8995_FLL1_FRATIO_SHIFT ;
 int WM8995_FLL1_N_MASK ;
 int WM8995_FLL1_N_SHIFT ;
 int WM8995_FLL1_OUTDIV_MASK ;
 int WM8995_FLL1_OUTDIV_SHIFT ;
 int WM8995_FLL1_REFCLK_DIV_MASK ;
 int WM8995_FLL1_REFCLK_DIV_SHIFT ;
 int WM8995_FLL1_REFCLK_SRC_MASK ;





 int configure_clock (struct snd_soc_component*) ;
 struct wm8995_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,scalar_t__) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,scalar_t__,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int ) ;
 int wm8995_get_fll_config (struct fll_div*,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8995_set_fll(struct snd_soc_dai *dai, int id,
     int src, unsigned int freq_in,
     unsigned int freq_out)
{
 struct snd_soc_component *component;
 struct wm8995_priv *wm8995;
 int reg_offset, ret;
 struct fll_div fll;
 u16 reg, aif1, aif2;

 component = dai->component;
 wm8995 = snd_soc_component_get_drvdata(component);

 aif1 = snd_soc_component_read32(component, WM8995_AIF1_CLOCKING_1)
        & WM8995_AIF1CLK_ENA;

 aif2 = snd_soc_component_read32(component, WM8995_AIF2_CLOCKING_1)
        & WM8995_AIF2CLK_ENA;

 switch (id) {
 case 133:
  reg_offset = 0;
  id = 0;
  break;
 case 132:
  reg_offset = 0x20;
  id = 1;
  break;
 default:
  return -EINVAL;
 }

 switch (src) {
 case 0:

  if (freq_out)
   return -EINVAL;
  break;
 case 129:
 case 128:
 case 130:
 case 131:
  break;
 default:
  return -EINVAL;
 }


 if (wm8995->fll[id].src == src &&
     wm8995->fll[id].in == freq_in && wm8995->fll[id].out == freq_out)
  return 0;





 if (freq_out)
  ret = wm8995_get_fll_config(&fll, freq_in, freq_out);
 else
  ret = wm8995_get_fll_config(&fll, wm8995->fll[id].in,
         wm8995->fll[id].out);
 if (ret < 0)
  return ret;


 snd_soc_component_update_bits(component, WM8995_AIF1_CLOCKING_1,
       WM8995_AIF1CLK_ENA_MASK, 0);
 snd_soc_component_update_bits(component, WM8995_AIF2_CLOCKING_1,
       WM8995_AIF2CLK_ENA_MASK, 0);


 snd_soc_component_update_bits(component, WM8995_FLL1_CONTROL_1 + reg_offset,
       WM8995_FLL1_ENA_MASK, 0);

 reg = (fll.outdiv << WM8995_FLL1_OUTDIV_SHIFT) |
       (fll.fll_fratio << WM8995_FLL1_FRATIO_SHIFT);
 snd_soc_component_update_bits(component, WM8995_FLL1_CONTROL_2 + reg_offset,
       WM8995_FLL1_OUTDIV_MASK |
       WM8995_FLL1_FRATIO_MASK, reg);

 snd_soc_component_write(component, WM8995_FLL1_CONTROL_3 + reg_offset, fll.k);

 snd_soc_component_update_bits(component, WM8995_FLL1_CONTROL_4 + reg_offset,
       WM8995_FLL1_N_MASK,
       fll.n << WM8995_FLL1_N_SHIFT);

 snd_soc_component_update_bits(component, WM8995_FLL1_CONTROL_5 + reg_offset,
       WM8995_FLL1_REFCLK_DIV_MASK |
       WM8995_FLL1_REFCLK_SRC_MASK,
       (fll.clk_ref_div << WM8995_FLL1_REFCLK_DIV_SHIFT) |
       (src - 1));

 if (freq_out)
  snd_soc_component_update_bits(component, WM8995_FLL1_CONTROL_1 + reg_offset,
        WM8995_FLL1_ENA_MASK, WM8995_FLL1_ENA);

 wm8995->fll[id].in = freq_in;
 wm8995->fll[id].out = freq_out;
 wm8995->fll[id].src = src;


 snd_soc_component_update_bits(component, WM8995_AIF1_CLOCKING_1,
       WM8995_AIF1CLK_ENA_MASK, aif1);
 snd_soc_component_update_bits(component, WM8995_AIF2_CLOCKING_1,
       WM8995_AIF2CLK_ENA_MASK, aif2);

 configure_clock(component);

 return 0;
}
