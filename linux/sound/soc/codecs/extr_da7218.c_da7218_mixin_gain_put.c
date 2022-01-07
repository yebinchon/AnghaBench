
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct da7218_priv {scalar_t__ alc_en; } ;


 int da7218_alc_calib (struct snd_soc_component*) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int da7218_mixin_gain_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 int ret;

 ret = snd_soc_put_volsw(kcontrol, ucontrol);





 if ((ret == 1) && (da7218->alc_en))
  da7218_alc_calib(component);

 return ret;
}
