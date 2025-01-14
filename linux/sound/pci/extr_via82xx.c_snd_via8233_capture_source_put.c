
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct via82xx {int port; int reg_lock; } ;
struct TYPE_6__ {scalar_t__ index; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_4__ {scalar_t__* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int VIA_REG_CAPTURE_CHANNEL ;
 int VIA_REG_CAPTURE_CHANNEL_MIC ;
 int inb (unsigned long) ;
 int outb (int,unsigned long) ;
 struct via82xx* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_via8233_capture_source_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct via82xx *chip = snd_kcontrol_chip(kcontrol);
 unsigned long port = chip->port + (kcontrol->id.index ? (VIA_REG_CAPTURE_CHANNEL + 0x10) : VIA_REG_CAPTURE_CHANNEL);
 u8 val, oval;

 spin_lock_irq(&chip->reg_lock);
 oval = inb(port);
 val = oval & ~VIA_REG_CAPTURE_CHANNEL_MIC;
 if (ucontrol->value.enumerated.item[0])
  val |= VIA_REG_CAPTURE_CHANNEL_MIC;
 if (val != oval)
  outb(val, port);
 spin_unlock_irq(&chip->reg_lock);
 return val != oval;
}
