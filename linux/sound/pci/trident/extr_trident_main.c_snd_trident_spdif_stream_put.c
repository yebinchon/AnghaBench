
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {unsigned int spdif_pcm_bits; scalar_t__ device; unsigned int spdif_bits; int reg_lock; int * spdif; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int NX_SPCSTATUS ;
 int SI_SPDIF_CS ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,int ) ;
 int outl (unsigned int,int ) ;
 struct snd_trident* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_stream_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_trident *trident = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change;

 val = (ucontrol->value.iec958.status[0] << 0) |
       (ucontrol->value.iec958.status[1] << 8) |
       (ucontrol->value.iec958.status[2] << 16) |
       (ucontrol->value.iec958.status[3] << 24);
 spin_lock_irq(&trident->reg_lock);
 change = trident->spdif_pcm_bits != val;
 trident->spdif_pcm_bits = val;
 if (trident->spdif != ((void*)0)) {
  if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
   outl(trident->spdif_pcm_bits, TRID_REG(trident, NX_SPCSTATUS));
  } else {
   outl(trident->spdif_bits, TRID_REG(trident, SI_SPDIF_CS));
  }
 }
 spin_unlock_irq(&trident->reg_lock);
 return change;
}
