
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int lock; } ;


 int EBUSY ;
 int hdspm_ds_wire (struct hdspm*) ;
 int hdspm_set_ds_wire (struct hdspm*,unsigned int) ;
 int snd_hdspm_use_is_exclusive (struct hdspm*) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_put_ds_wire(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 int change;
 unsigned int val;

 if (!snd_hdspm_use_is_exclusive(hdspm))
  return -EBUSY;
 val = ucontrol->value.integer.value[0] & 1;
 spin_lock_irq(&hdspm->lock);
 change = (int) val != hdspm_ds_wire(hdspm);
 hdspm_set_ds_wire(hdspm, val);
 spin_unlock_irq(&hdspm->lock);
 return change;
}
