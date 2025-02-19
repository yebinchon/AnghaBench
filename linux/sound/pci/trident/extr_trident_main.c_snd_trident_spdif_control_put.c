
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {unsigned char spdif_ctrl; scalar_t__ device; unsigned int spdif_bits; int reg_lock; int * spdif; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 scalar_t__ NX_SPCSTATUS ;
 scalar_t__ NX_SPCTRL_SPCSO ;
 scalar_t__ SI_SERIAL_INTF_CTRL ;
 scalar_t__ SI_SPDIF_CS ;
 unsigned int SPDIF_EN ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 int inb (int ) ;
 unsigned int inl (int ) ;
 int outb (unsigned char,int ) ;
 int outl (unsigned int,int ) ;
 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_control_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 unsigned char val;
 int change;

 val = ucontrol->value.integer.value[0] ? (unsigned char) kcontrol->private_value : 0x00;
 spin_lock_irq(&trident->reg_lock);

 change = trident->spdif_ctrl != val;
 trident->spdif_ctrl = val;
 if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
  if ((inb(TRID_REG(trident, NX_SPCTRL_SPCSO + 3)) & 0x10) == 0) {
   outl(trident->spdif_bits, TRID_REG(trident, NX_SPCSTATUS));
   outb(trident->spdif_ctrl, TRID_REG(trident, NX_SPCTRL_SPCSO + 3));
  }
 } else {
  if (trident->spdif == ((void*)0)) {
   unsigned int temp;
   outl(trident->spdif_bits, TRID_REG(trident, SI_SPDIF_CS));
   temp = inl(TRID_REG(trident, SI_SERIAL_INTF_CTRL)) & ~SPDIF_EN;
   if (val)
    temp |= SPDIF_EN;
   outl(temp, TRID_REG(trident, SI_SERIAL_INTF_CTRL));
  }
 }
 spin_unlock_irq(&trident->reg_lock);
 return change;
}
