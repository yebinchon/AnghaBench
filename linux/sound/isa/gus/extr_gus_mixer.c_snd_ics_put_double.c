
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {unsigned char** ics_regs; } ;
struct snd_gus_card {int reg_lock; scalar_t__ ics_flipped; scalar_t__ ics_flag; TYPE_3__ gf1; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int GUSP (struct snd_gus_card*,int ) ;
 int MIXCNTRLPORT ;
 int MIXDATAPORT ;
 int SNDRV_ICS_GF1_DEV ;
 int SNDRV_ICS_MASTER_DEV ;
 int outb (unsigned char,int ) ;
 struct snd_gus_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swap (unsigned char,unsigned char) ;

__attribute__((used)) static int snd_ics_put_double(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_gus_card *gus = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int addr = kcontrol->private_value & 0xff;
 int change;
 unsigned char val1, val2, oval1, oval2;

 val1 = ucontrol->value.integer.value[0] & 127;
 val2 = ucontrol->value.integer.value[1] & 127;
 spin_lock_irqsave(&gus->reg_lock, flags);
 oval1 = gus->gf1.ics_regs[addr][0];
 oval2 = gus->gf1.ics_regs[addr][1];
 change = val1 != oval1 || val2 != oval2;
 gus->gf1.ics_regs[addr][0] = val1;
 gus->gf1.ics_regs[addr][1] = val2;
 if (gus->ics_flag && gus->ics_flipped &&
     (addr == SNDRV_ICS_GF1_DEV || addr == SNDRV_ICS_MASTER_DEV))
  swap(val1, val2);
 addr <<= 3;
 outb(addr | 0, GUSP(gus, MIXCNTRLPORT));
 outb(1, GUSP(gus, MIXDATAPORT));
 outb(addr | 2, GUSP(gus, MIXCNTRLPORT));
 outb((unsigned char) val1, GUSP(gus, MIXDATAPORT));
 outb(addr | 1, GUSP(gus, MIXCNTRLPORT));
 outb(2, GUSP(gus, MIXDATAPORT));
 outb(addr | 3, GUSP(gus, MIXCNTRLPORT));
 outb((unsigned char) val2, GUSP(gus, MIXDATAPORT));
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 return change;
}
