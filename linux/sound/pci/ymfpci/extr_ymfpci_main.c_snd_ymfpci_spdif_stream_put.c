
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci {unsigned int spdif_pcm_bits; int reg_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int YDSXGR_SPDIFOUTCTRL ;
 int YDSXGR_SPDIFOUTSTATUS ;
 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ymfpci_spdif_stream_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change;

 val = ((ucontrol->value.iec958.status[0] & 0x3e) << 0) |
       (ucontrol->value.iec958.status[1] << 8);
 spin_lock_irq(&chip->reg_lock);
 change = chip->spdif_pcm_bits != val;
 chip->spdif_pcm_bits = val;
 if ((snd_ymfpci_readw(chip, YDSXGR_SPDIFOUTCTRL) & 2))
  snd_ymfpci_writew(chip, YDSXGR_SPDIFOUTSTATUS, chip->spdif_pcm_bits);
 spin_unlock_irq(&chip->reg_lock);
 return change;
}
