
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {scalar_t__ configured; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int EBUSY ;
 int dev_err (int ,char*) ;
 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int snd_soc_put_twl4030_opmode_enum_double(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);

 if (twl4030->configured) {
  dev_err(component->dev,
   "operation mode cannot be changed on-the-fly\n");
  return -EBUSY;
 }

 return snd_soc_put_enum_double(kcontrol, ucontrol);
}
