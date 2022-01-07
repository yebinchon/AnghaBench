
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_POST_PMU ;
 int SND_SOC_DAPM_PRE_PMD ;
 int WM8961_CLASS_D_CONTROL_1 ;
 int WM8961_PWR_MGMT_2 ;
 int WM8961_SPKL_ENA ;
 int WM8961_SPKL_PGA ;
 int WM8961_SPKR_ENA ;
 int WM8961_SPKR_PGA ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm8961_spk_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 u16 pwr_reg = snd_soc_component_read32(component, WM8961_PWR_MGMT_2);
 u16 spk_reg = snd_soc_component_read32(component, WM8961_CLASS_D_CONTROL_1);

 if (event & SND_SOC_DAPM_POST_PMU) {

  pwr_reg |= WM8961_SPKL_PGA | WM8961_SPKR_PGA;
  snd_soc_component_write(component, WM8961_PWR_MGMT_2, pwr_reg);


  spk_reg |= WM8961_SPKL_ENA | WM8961_SPKR_ENA;
  snd_soc_component_write(component, WM8961_CLASS_D_CONTROL_1, spk_reg);
 }

 if (event & SND_SOC_DAPM_PRE_PMD) {

  spk_reg &= ~(WM8961_SPKL_ENA | WM8961_SPKR_ENA);
  snd_soc_component_write(component, WM8961_CLASS_D_CONTROL_1, spk_reg);


  pwr_reg &= ~(WM8961_SPKL_PGA | WM8961_SPKR_PGA);
  snd_soc_component_write(component, WM8961_PWR_MGMT_2, pwr_reg);
 }

 return 0;
}
