
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; struct snd_ali* private_data; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ali {int spdif_mask; int reg_lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ali5451_spdif_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ali *codec = kcontrol->private_data;
 unsigned int spdif_enable;

 spdif_enable = ucontrol->value.integer.value[0] ? 1 : 0;

 spin_lock_irq(&codec->reg_lock);
 switch (kcontrol->private_value) {
 case 0:
  spdif_enable = (codec->spdif_mask & 0x02) ? 1 : 0;
  break;
 case 1:
  spdif_enable = ((codec->spdif_mask & 0x02) &&
     (codec->spdif_mask & 0x04)) ? 1 : 0;
  break;
 case 2:
  spdif_enable = (codec->spdif_mask & 0x01) ? 1 : 0;
  break;
 default:
  break;
 }
 ucontrol->value.integer.value[0] = spdif_enable;
 spin_unlock_irq(&codec->reg_lock);
 return 0;
}
