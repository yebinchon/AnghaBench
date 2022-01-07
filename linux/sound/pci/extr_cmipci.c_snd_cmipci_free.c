
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ irq; int pci; } ;


 int CM_CH_CAPT ;
 int CM_CH_PLAY ;
 int CM_ENSPDOUT ;
 int CM_FM_EN ;
 int CM_REG_FUNCTRL0 ;
 int CM_REG_FUNCTRL1 ;
 int CM_REG_INT_HLDCLR ;
 int CM_REG_LEGACY_CTRL ;
 int CM_REG_MISC_CTRL ;
 int free_irq (scalar_t__,struct cmipci*) ;
 int kfree (struct cmipci*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_cmipci_ch_reset (struct cmipci*,int ) ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 int snd_cmipci_free_gameport (struct cmipci*) ;
 int snd_cmipci_mixer_write (struct cmipci*,int ,int ) ;
 int snd_cmipci_write (struct cmipci*,int ,int ) ;

__attribute__((used)) static int snd_cmipci_free(struct cmipci *cm)
{
 if (cm->irq >= 0) {
  snd_cmipci_clear_bit(cm, CM_REG_MISC_CTRL, CM_FM_EN);
  snd_cmipci_clear_bit(cm, CM_REG_LEGACY_CTRL, CM_ENSPDOUT);
  snd_cmipci_write(cm, CM_REG_INT_HLDCLR, 0);
  snd_cmipci_ch_reset(cm, CM_CH_PLAY);
  snd_cmipci_ch_reset(cm, CM_CH_CAPT);
  snd_cmipci_write(cm, CM_REG_FUNCTRL0, 0);
  snd_cmipci_write(cm, CM_REG_FUNCTRL1, 0);


  snd_cmipci_mixer_write(cm, 0, 0);

  free_irq(cm->irq, cm);
 }

 snd_cmipci_free_gameport(cm);
 pci_release_regions(cm->pci);
 pci_disable_device(cm->pci);
 kfree(cm);
 return 0;
}
