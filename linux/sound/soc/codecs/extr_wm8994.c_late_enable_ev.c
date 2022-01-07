
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int aif2clk_enable; int aif1clk_enable; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int const SND_SOC_DAPM_POST_PMU ;

 int WM8994_AIF1CLK_ENA ;
 int WM8994_AIF1CLK_ENA_MASK ;
 int WM8994_AIF1_CLOCKING_1 ;
 int WM8994_AIF2CLK_ENA ;
 int WM8994_AIF2CLK_ENA_MASK ;
 int WM8994_AIF2_CLOCKING_1 ;
 int aif1clk_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int const) ;
 int aif2clk_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int const) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm8958_aif_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;

__attribute__((used)) static int late_enable_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (wm8994->aif1clk_enable) {
   aif1clk_ev(w, kcontrol, 128);
   snd_soc_component_update_bits(component, WM8994_AIF1_CLOCKING_1,
         WM8994_AIF1CLK_ENA_MASK,
         WM8994_AIF1CLK_ENA);
   aif1clk_ev(w, kcontrol, SND_SOC_DAPM_POST_PMU);
   wm8994->aif1clk_enable = 0;
  }
  if (wm8994->aif2clk_enable) {
   aif2clk_ev(w, kcontrol, 128);
   snd_soc_component_update_bits(component, WM8994_AIF2_CLOCKING_1,
         WM8994_AIF2CLK_ENA_MASK,
         WM8994_AIF2CLK_ENA);
   aif2clk_ev(w, kcontrol, SND_SOC_DAPM_POST_PMU);
   wm8994->aif2clk_enable = 0;
  }
  break;
 }


 wm8958_aif_ev(w, kcontrol, event);

 return 0;
}
