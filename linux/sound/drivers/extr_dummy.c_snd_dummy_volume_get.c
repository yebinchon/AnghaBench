
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_dummy {int mixer_lock; int ** mixer_volume; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_dummy* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_dummy_volume_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_dummy *dummy = snd_kcontrol_chip(kcontrol);
 int addr = kcontrol->private_value;

 spin_lock_irq(&dummy->mixer_lock);
 ucontrol->value.integer.value[0] = dummy->mixer_volume[addr][0];
 ucontrol->value.integer.value[1] = dummy->mixer_volume[addr][1];
 spin_unlock_irq(&dummy->mixer_lock);
 return 0;
}
