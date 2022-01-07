
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct da7219_priv {int gain_ramp_ctrl; } ;


 int DA7219_GAIN_RAMP_CTRL ;
 int DA7219_GAIN_RAMP_RATE_NOMINAL ;




 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da7219_gain_ramp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
 case 129:

  da7219->gain_ramp_ctrl =
   snd_soc_component_read32(component, DA7219_GAIN_RAMP_CTRL);
  snd_soc_component_write(component, DA7219_GAIN_RAMP_CTRL,
         DA7219_GAIN_RAMP_RATE_NOMINAL);
  break;
 case 130:
 case 131:

  snd_soc_component_write(component, DA7219_GAIN_RAMP_CTRL,
         da7219->gain_ramp_ctrl);
  break;
 }

 return 0;
}
