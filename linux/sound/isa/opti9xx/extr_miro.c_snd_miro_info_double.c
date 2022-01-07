
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int min; int max; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int ACI_GET_EQ1 ;
 int ACI_GET_EQ7 ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int snd_miro_info_double(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_info *uinfo)
{
 int reg = kcontrol->private_value & 0xff;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 2;

 if ((reg >= ACI_GET_EQ1) && (reg <= ACI_GET_EQ7)) {



  uinfo->value.integer.min = - 0x7f;
  uinfo->value.integer.max = 0x7f;
 } else {



  uinfo->value.integer.min = 0;
  uinfo->value.integer.max = 0x20;
 }

 return 0;
}
