
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio_sub {int vol; } ;
struct uniphier_aio_chip {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct uniphier_aio_sub* find_volume (struct uniphier_aio_chip*,int) ;
 struct uniphier_aio_chip* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int uniphier_aio_vol_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *comp = snd_soc_kcontrol_component(kcontrol);
 struct uniphier_aio_chip *chip = snd_soc_component_get_drvdata(comp);
 struct uniphier_aio_sub *sub;
 int oport_hw = kcontrol->private_value;

 sub = find_volume(chip, oport_hw);
 if (!sub)
  return 0;

 ucontrol->value.integer.value[0] = sub->vol;

 return 0;
}
