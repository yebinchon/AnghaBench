
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_hubs_data {scalar_t__ no_series_update; scalar_t__ dcs_codes_r; scalar_t__ dcs_codes_l; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int WM8993_DCS_TRIG_SINGLE_0 ;
 int WM8993_DCS_TRIG_SINGLE_1 ;
 int WM8993_DC_SERVO_0 ;
 int WM8993_HPOUT1L_ENA ;
 int WM8993_HPOUT1R_ENA ;
 int WM8993_POWER_MANAGEMENT_1 ;
 struct wm_hubs_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8993_put_dc_servo(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm_hubs_data *hubs = snd_soc_component_get_drvdata(component);
 int ret;

 ret = snd_soc_put_volsw(kcontrol, ucontrol);



 if (hubs->dcs_codes_l || hubs->dcs_codes_r || hubs->no_series_update)
  return ret;


 if (snd_soc_component_read32(component, WM8993_POWER_MANAGEMENT_1)
     & (WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA))
  snd_soc_component_update_bits(component,
        WM8993_DC_SERVO_0,
        WM8993_DCS_TRIG_SINGLE_0 |
        WM8993_DCS_TRIG_SINGLE_1,
        WM8993_DCS_TRIG_SINGLE_0 |
        WM8993_DCS_TRIG_SINGLE_1);

 return ret;
}
