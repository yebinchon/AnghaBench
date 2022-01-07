
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct pm8916_wcd_analog_priv {int micbias2_cap_mode; } ;




 int pm8916_mbhc_configure_bias (struct pm8916_wcd_analog_priv*,int) ;
 int pm8916_wcd_analog_enable_micbias_int (struct snd_soc_component*,int,int ,int ) ;
 struct pm8916_wcd_analog_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int pm8916_wcd_analog_enable_micbias_int2(struct
        snd_soc_dapm_widget
        *w, struct snd_kcontrol
        *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct pm8916_wcd_analog_priv *wcd = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  pm8916_mbhc_configure_bias(wcd, 1);
  break;
 case 129:
  pm8916_mbhc_configure_bias(wcd, 0);
  break;
 }

 return pm8916_wcd_analog_enable_micbias_int(component, event, w->reg,
           wcd->micbias2_cap_mode);
}
