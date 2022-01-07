
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int gain; } ;
struct snd_harmony {int mixer_lock; TYPE_1__ st; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 struct snd_harmony* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_harmony_volume_get(struct snd_kcontrol *kc,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_harmony *h = snd_kcontrol_chip(kc);
 int shift_left = (kc->private_value) & 0xff;
 int shift_right = (kc->private_value >> 8) & 0xff;
 int mask = (kc->private_value >> 16) & 0xff;
 int invert = (kc->private_value >> 24) & 0xff;
 int left, right;

 spin_lock_irq(&h->mixer_lock);

 left = (h->st.gain >> shift_left) & mask;
 right = (h->st.gain >> shift_right) & mask;
 if (invert) {
  left = mask - left;
  right = mask - right;
 }

 ucontrol->value.integer.value[0] = left;
 if (shift_left != shift_right)
  ucontrol->value.integer.value[1] = right;

 spin_unlock_irq(&h->mixer_lock);

 return 0;
}
