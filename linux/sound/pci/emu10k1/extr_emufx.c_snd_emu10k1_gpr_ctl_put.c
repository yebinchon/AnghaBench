
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_emu10k1_fx8010_ctl {unsigned int vcount; unsigned int min; unsigned int max; unsigned int* value; int translation; int count; scalar_t__* gpr; } ;
struct snd_emu10k1 {int reg_lock; scalar_t__ gpr_base; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EIO ;





 unsigned int** bass_table ;
 unsigned int* db_table ;
 unsigned int* onoff_table ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,scalar_t__,int ,unsigned int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int** treble_table ;

__attribute__((used)) static int snd_emu10k1_gpr_ctl_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 struct snd_emu10k1_fx8010_ctl *ctl =
  (struct snd_emu10k1_fx8010_ctl *) kcontrol->private_value;
 unsigned long flags;
 unsigned int nval, val;
 unsigned int i, j;
 int change = 0;

 spin_lock_irqsave(&emu->reg_lock, flags);
 for (i = 0; i < ctl->vcount; i++) {
  nval = ucontrol->value.integer.value[i];
  if (nval < ctl->min)
   nval = ctl->min;
  if (nval > ctl->max)
   nval = ctl->max;
  if (nval != ctl->value[i])
   change = 1;
  val = ctl->value[i] = nval;
  switch (ctl->translation) {
  case 131:
   snd_emu10k1_ptr_write(emu, emu->gpr_base + ctl->gpr[i], 0, val);
   break;
  case 129:
   snd_emu10k1_ptr_write(emu, emu->gpr_base + ctl->gpr[i], 0, db_table[val]);
   break;
  case 132:
   if ((ctl->count % 5) != 0 || (ctl->count / 5) != ctl->vcount) {
    change = -EIO;
    goto __error;
   }
   for (j = 0; j < 5; j++)
    snd_emu10k1_ptr_write(emu, emu->gpr_base + ctl->gpr[j * ctl->vcount + i], 0, bass_table[val][j]);
   break;
  case 128:
   if ((ctl->count % 5) != 0 || (ctl->count / 5) != ctl->vcount) {
    change = -EIO;
    goto __error;
   }
   for (j = 0; j < 5; j++)
    snd_emu10k1_ptr_write(emu, emu->gpr_base + ctl->gpr[j * ctl->vcount + i], 0, treble_table[val][j]);
   break;
  case 130:
   snd_emu10k1_ptr_write(emu, emu->gpr_base + ctl->gpr[i], 0, onoff_table[val]);
   break;
  }
 }
      __error:
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return change;
}
