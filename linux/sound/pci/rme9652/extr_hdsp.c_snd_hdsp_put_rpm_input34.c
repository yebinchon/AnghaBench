
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
struct hdsp {int lock; } ;


 int EBUSY ;
 int hdsp_rpm_input34 (struct hdsp*) ;
 scalar_t__ hdsp_set_rpm_input34 (struct hdsp*,int) ;
 int snd_hdsp_use_is_exclusive (struct hdsp*) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_put_rpm_input34(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);
 int change;
 int val;

 if (!snd_hdsp_use_is_exclusive(hdsp))
  return -EBUSY;
 val = ucontrol->value.enumerated.item[0];
 if (val < 0)
  val = 0;
 if (val > 4)
  val = 4;
 spin_lock_irq(&hdsp->lock);
 if (val != hdsp_rpm_input34(hdsp))
  change = (hdsp_set_rpm_input34(hdsp, val) == 0) ? 1 : 0;
 else
  change = 0;
 spin_unlock_irq(&hdsp->lock);
 return change;
}
