
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdsp {scalar_t__ io_type; int lock; } ;


 int EBUSY ;
 scalar_t__ H9632 ;
 int hdsp_set_spdif_input (struct hdsp*,unsigned int) ;
 unsigned int hdsp_spdif_in (struct hdsp*) ;
 int snd_hdsp_use_is_exclusive (struct hdsp*) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_put_spdif_in(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);
 int change;
 unsigned int val;

 if (!snd_hdsp_use_is_exclusive(hdsp))
  return -EBUSY;
 val = ucontrol->value.enumerated.item[0] % ((hdsp->io_type == H9632) ? 4 : 3);
 spin_lock_irq(&hdsp->lock);
 change = val != hdsp_spdif_in(hdsp);
 if (change)
  hdsp_set_spdif_input(hdsp, val);
 spin_unlock_irq(&hdsp->lock);
 return change;
}
