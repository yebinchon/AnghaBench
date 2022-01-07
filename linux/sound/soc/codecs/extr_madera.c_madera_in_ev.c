
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct madera_priv {int in_pending; } ;


 int MADERA_ADC_DIGITAL_VOLUME_1L ;
 int MADERA_ADC_DIGITAL_VOLUME_1R ;
 int MADERA_IN1L_MUTE ;
 int MADERA_INPUT_ENABLES ;
 int MADERA_IN_VU ;




 int madera_in_set_vu (struct madera_priv*,int) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read (struct snd_soc_component*,int ,unsigned int*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int usleep_range (int,int) ;

int madera_in_ev(struct snd_soc_dapm_widget *w, struct snd_kcontrol *kcontrol,
   int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 unsigned int reg, val;
 int ret;

 if (w->shift % 2)
  reg = MADERA_ADC_DIGITAL_VOLUME_1L + ((w->shift / 2) * 8);
 else
  reg = MADERA_ADC_DIGITAL_VOLUME_1R + ((w->shift / 2) * 8);

 switch (event) {
 case 128:
  priv->in_pending++;
  break;
 case 130:
  priv->in_pending--;
  snd_soc_component_update_bits(component, reg,
           MADERA_IN1L_MUTE, 0);


  if (priv->in_pending == 0) {
   usleep_range(1000, 3000);
   madera_in_set_vu(priv, 1);
  }
  break;
 case 129:
  snd_soc_component_update_bits(component, reg,
           MADERA_IN1L_MUTE | MADERA_IN_VU,
           MADERA_IN1L_MUTE | MADERA_IN_VU);
  break;
 case 131:

  ret = snd_soc_component_read(component, MADERA_INPUT_ENABLES,
          &val);
  if (!ret && !val)
   madera_in_set_vu(priv, 0);
  break;
 default:
  break;
 }

 return 0;
}
