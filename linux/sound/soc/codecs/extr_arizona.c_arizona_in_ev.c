
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct arizona_priv {int in_pending; } ;


 int ARIZONA_ADC_DIGITAL_VOLUME_1L ;
 int ARIZONA_ADC_DIGITAL_VOLUME_1R ;
 int ARIZONA_IN1L_MUTE ;
 int ARIZONA_INPUT_ENABLES ;
 int ARIZONA_IN_VU ;




 int arizona_in_set_vu (struct snd_soc_component*,int) ;
 int msleep (int) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int arizona_in_ev(struct snd_soc_dapm_widget *w, struct snd_kcontrol *kcontrol,
    int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 unsigned int reg;

 if (w->shift % 2)
  reg = ARIZONA_ADC_DIGITAL_VOLUME_1L + ((w->shift / 2) * 8);
 else
  reg = ARIZONA_ADC_DIGITAL_VOLUME_1R + ((w->shift / 2) * 8);

 switch (event) {
 case 128:
  priv->in_pending++;
  break;
 case 130:
  snd_soc_component_update_bits(component, reg,
           ARIZONA_IN1L_MUTE, 0);


  priv->in_pending--;
  if (priv->in_pending == 0) {
   msleep(1);
   arizona_in_set_vu(component, 1);
  }
  break;
 case 129:
  snd_soc_component_update_bits(component, reg,
        ARIZONA_IN1L_MUTE | ARIZONA_IN_VU,
        ARIZONA_IN1L_MUTE | ARIZONA_IN_VU);
  break;
 case 131:

  reg = snd_soc_component_read32(component, ARIZONA_INPUT_ENABLES);
  if (reg == 0)
   arizona_in_set_vu(component, 0);
  break;
 default:
  break;
 }

 return 0;
}
