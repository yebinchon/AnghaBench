
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_6__ {int * item; } ;
struct TYPE_5__ {TYPE_3__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct max98095_priv {struct max98095_cdata* dai; } ;
struct max98095_cdata {int eq_sel; } ;


 int max98095_get_eq_channel (int ) ;
 struct max98095_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int max98095_get_eq_enum(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct max98095_priv *max98095 = snd_soc_component_get_drvdata(component);
 int channel = max98095_get_eq_channel(kcontrol->id.name);
 struct max98095_cdata *cdata;

 cdata = &max98095->dai[channel];
 ucontrol->value.enumerated.item[0] = cdata->eq_sel;

 return 0;
}
