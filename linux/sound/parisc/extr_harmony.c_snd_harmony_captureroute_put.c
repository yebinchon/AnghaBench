
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int gain; } ;
struct snd_harmony {TYPE_3__ st; int mixer_lock; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int HARMONY_GAIN_IS_MASK ;
 int HARMONY_GAIN_IS_SHIFT ;
 int snd_harmony_set_new_gain (struct snd_harmony*) ;
 struct snd_harmony* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_harmony_captureroute_put(struct snd_kcontrol *kc,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_harmony *h = snd_kcontrol_chip(kc);
 int value;
 int old_gain = h->st.gain;

 spin_lock_irq(&h->mixer_lock);

 value = ucontrol->value.enumerated.item[0] & 1;
 h->st.gain &= ~HARMONY_GAIN_IS_MASK;
  h->st.gain |= value << HARMONY_GAIN_IS_SHIFT;

 snd_harmony_set_new_gain(h);

 spin_unlock_irq(&h->mixer_lock);

 return h->st.gain != old_gain;
}
