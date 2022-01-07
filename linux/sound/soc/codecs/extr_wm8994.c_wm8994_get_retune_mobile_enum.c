
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wm8994_priv {int * retune_mobile_cfg; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_5__ {int * item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 struct wm8994_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int wm8994_get_retune_mobile_block (int ) ;

__attribute__((used)) static int wm8994_get_retune_mobile_enum(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8994_priv *wm8994 = snd_soc_component_get_drvdata(component);
 int block = wm8994_get_retune_mobile_block(kcontrol->id.name);

 if (block < 0)
  return block;

 ucontrol->value.enumerated.item[0] = wm8994->retune_mobile_cfg[block];

 return 0;
}
