
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994_priv {int aif2clk_disable; int aif1clk_disable; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;



 int const SND_SOC_DAPM_PRE_PMD ;
 int WM8994_AIF1CLK_ENA_MASK ;
 int WM8994_AIF1_CLOCKING_1 ;
 int WM8994_AIF2CLK_ENA_MASK ;
 int WM8994_AIF2_CLOCKING_1 ;
 int aif1clk_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int const) ;
 int aif2clk_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int const) ;
 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int late_disable_ev(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (wm8994->aif1clk_disable) {
   aif1clk_ev(w, kcontrol, SND_SOC_DAPM_PRE_PMD);
   snd_soc_component_update_bits(component, WM8994_AIF1_CLOCKING_1,
         WM8994_AIF1CLK_ENA_MASK, 0);
   aif1clk_ev(w, kcontrol, 128);
   wm8994->aif1clk_disable = 0;
  }
  if (wm8994->aif2clk_disable) {
   aif2clk_ev(w, kcontrol, SND_SOC_DAPM_PRE_PMD);
   snd_soc_component_update_bits(component, WM8994_AIF2_CLOCKING_1,
         WM8994_AIF2CLK_ENA_MASK, 0);
   aif2clk_ev(w, kcontrol, 128);
   wm8994->aif2clk_disable = 0;
  }
  break;
 }

 return 0;
}
