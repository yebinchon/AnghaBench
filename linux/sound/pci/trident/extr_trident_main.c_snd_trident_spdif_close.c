
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_trident {scalar_t__ device; unsigned int spdif_bits; TYPE_2__* spdif_pcm_ctl; int card; int reg_lock; scalar_t__ spdif_ctrl; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 scalar_t__ NX_SPCSTATUS ;
 scalar_t__ NX_SPCTRL_SPCSO ;
 scalar_t__ SI_SERIAL_INTF_CTRL ;
 scalar_t__ SI_SPDIF_CS ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 unsigned int SPDIF_EN ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 unsigned int inl (int ) ;
 int outb (scalar_t__,int ) ;
 int outl (unsigned int,int ) ;
 int snd_ctl_notify (int ,int,int *) ;
 struct snd_trident* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_trident_spdif_close(struct snd_pcm_substream *substream)
{
 struct snd_trident *trident = snd_pcm_substream_chip(substream);
 unsigned int temp;

 spin_lock_irq(&trident->reg_lock);

 if (trident->device != TRIDENT_DEVICE_ID_SI7018) {
  outb(trident->spdif_ctrl, TRID_REG(trident, NX_SPCTRL_SPCSO + 3));
  outl(trident->spdif_bits, TRID_REG(trident, NX_SPCSTATUS));
 } else {
  outl(trident->spdif_bits, TRID_REG(trident, SI_SPDIF_CS));
  temp = inl(TRID_REG(trident, SI_SERIAL_INTF_CTRL));
  if (trident->spdif_ctrl) {
   temp |= SPDIF_EN;
  } else {
   temp &= ~SPDIF_EN;
  }
  outl(temp, TRID_REG(trident, SI_SERIAL_INTF_CTRL));
 }
 spin_unlock_irq(&trident->reg_lock);
 trident->spdif_pcm_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(trident->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &trident->spdif_pcm_ctl->id);
 return 0;
}
