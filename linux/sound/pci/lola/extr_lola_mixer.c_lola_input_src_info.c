
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int max; scalar_t__ min; } ;
struct TYPE_5__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;
struct lola {TYPE_1__* pin; } ;
struct TYPE_4__ {int num_pins; } ;


 size_t CAPT ;
 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 struct lola* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int lola_input_src_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct lola *chip = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 uinfo->count = chip->pin[CAPT].num_pins;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = 1;
 return 0;
}
