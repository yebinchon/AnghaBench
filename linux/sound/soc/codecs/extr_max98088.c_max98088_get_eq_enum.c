
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_4__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct max98088_priv {struct max98088_cdata* dai; } ;
struct max98088_cdata {int eq_sel; } ;


 int max98088_get_channel (struct snd_soc_component*,int ) ;
 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int max98088_get_eq_enum(struct snd_kcontrol *kcontrol,
                                struct snd_ctl_elem_value *ucontrol)
{
       struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
       struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);
       int channel = max98088_get_channel(component, kcontrol->id.name);
       struct max98088_cdata *cdata;

       if (channel < 0)
        return channel;

       cdata = &max98088->dai[channel];
       ucontrol->value.enumerated.item[0] = cdata->eq_sel;
       return 0;
}
