
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ymfpci {int spdif_bits; TYPE_2__* spdif_pcm_ctl; int card; int reg_lock; scalar_t__ spdif_opened; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int YDSXGR_SPDIFOUTCTRL ;
 int YDSXGR_SPDIFOUTSTATUS ;
 int snd_ctl_notify (int ,int,int *) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ymfpci_playback_close_1 (struct snd_pcm_substream*) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int ymfpci_close_extension (struct snd_ymfpci*) ;

__attribute__((used)) static int snd_ymfpci_playback_spdif_close(struct snd_pcm_substream *substream)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);

 spin_lock_irq(&chip->reg_lock);
 chip->spdif_opened = 0;
 ymfpci_close_extension(chip);
 snd_ymfpci_writew(chip, YDSXGR_SPDIFOUTCTRL,
     snd_ymfpci_readw(chip, YDSXGR_SPDIFOUTCTRL) & ~2);
 snd_ymfpci_writew(chip, YDSXGR_SPDIFOUTSTATUS, chip->spdif_bits);
 spin_unlock_irq(&chip->reg_lock);
 chip->spdif_pcm_ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &chip->spdif_pcm_ctl->id);
 return snd_ymfpci_playback_close_1(substream);
}
