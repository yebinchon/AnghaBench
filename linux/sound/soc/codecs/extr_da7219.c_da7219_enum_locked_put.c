
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct da7219_priv {int ctrl_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int da7219_enum_locked_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 int ret;

 mutex_lock(&da7219->ctrl_lock);
 ret = snd_soc_put_enum_double(kcontrol, ucontrol);
 mutex_unlock(&da7219->ctrl_lock);

 return ret;
}
