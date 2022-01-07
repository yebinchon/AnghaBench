
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci {unsigned int dig_pcm_status; int reg_lock; } ;


 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_cmipci_spdif_stream_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci *chip = snd_kcontrol_chip(kcontrol);
 int i, change;
 unsigned int val;

 val = 0;
 spin_lock_irq(&chip->reg_lock);
 for (i = 0; i < 4; i++)
  val |= (unsigned int)ucontrol->value.iec958.status[i] << (i * 8);
 change = val != chip->dig_pcm_status;
 chip->dig_pcm_status = val;
 spin_unlock_irq(&chip->reg_lock);
 return change;
}
