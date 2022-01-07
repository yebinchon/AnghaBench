
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rt1011_priv {int cali_done; } ;


 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct rt1011_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt1011_r0_cali_get(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct rt1011_priv *rt1011 = snd_soc_component_get_drvdata(component);

 ucontrol->value.integer.value[0] = rt1011->cali_done;

 return 0;
}
