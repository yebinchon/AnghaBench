
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_amd7930 {int mgain; int rgain; int pgain; int lock; } ;





 int __amd7930_update_map (struct snd_amd7930*) ;
 struct snd_amd7930* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_amd7930_put_volume(struct snd_kcontrol *kctl, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_amd7930 *amd = snd_kcontrol_chip(kctl);
 unsigned long flags;
 int type = kctl->private_value;
 int *swval, change;

 switch (type) {
 case 129:
  swval = &amd->mgain;
  break;
 case 130:
  swval = &amd->rgain;
  break;
 case 128:
 default:
  swval = &amd->pgain;
  break;
 }

 spin_lock_irqsave(&amd->lock, flags);

 if (*swval != ucontrol->value.integer.value[0]) {
  *swval = ucontrol->value.integer.value[0] & 0xff;
  __amd7930_update_map(amd);
  change = 1;
 } else
  change = 0;

 spin_unlock_irqrestore(&amd->lock, flags);

 return change;
}
