
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct hdspm {int lock; } ;


 int EBUSY ;
 int hdspm_set_tristate (struct hdspm*,int,int ) ;
 int hdspm_tristate (struct hdspm*,int ) ;
 int snd_hdspm_use_is_exclusive (struct hdspm*) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_put_tristate(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 u32 regmask = kcontrol->private_value;
 int change;
 int val;

 if (!snd_hdspm_use_is_exclusive(hdspm))
  return -EBUSY;
 val = ucontrol->value.integer.value[0];
 if (val < 0)
  val = 0;
 if (val > 2)
  val = 2;

 spin_lock_irq(&hdspm->lock);
 change = val != hdspm_tristate(hdspm, regmask);
 hdspm_set_tristate(hdspm, val, regmask);
 spin_unlock_irq(&hdspm->lock);
 return change;
}
