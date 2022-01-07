
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ area; } ;
struct snd_ymfpci {scalar_t__ irq; int controller_microcode; int dsp_microcode; int pci; int old_legacy_ctrl; scalar_t__ res_reg_area; TYPE_1__ work_ptr; int reg_area_virt; scalar_t__ fm_res; scalar_t__ mpu_res; struct snd_ymfpci* saved_regs; } ;


 int EINVAL ;
 int PCI_D3hot ;
 int YDSXGR_BUF441OUTVOL ;
 int YDSXGR_EFFCTRLBASE ;
 int YDSXGR_GLOBALCTRL ;
 int YDSXGR_LEGACYOUTVOL ;
 int YDSXGR_NATIVEDACOUTVOL ;
 int YDSXGR_PLAYCTRLBASE ;
 int YDSXGR_RECCTRLBASE ;
 int YDSXGR_STATUS ;
 int YDSXGR_WORKBASE ;
 int YDSXGR_WORKSIZE ;
 int free_irq (scalar_t__,struct snd_ymfpci*) ;
 int iounmap (int ) ;
 int kfree (struct snd_ymfpci*) ;
 int pci_disable_device (int ) ;
 int pci_set_power_state (int ,int ) ;
 int pci_write_config_word (int ,int,int ) ;
 int release_and_free_resource (scalar_t__) ;
 int release_firmware (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_ymfpci_ac3_done (struct snd_ymfpci*) ;
 int snd_ymfpci_disable_dsp (struct snd_ymfpci*) ;
 int snd_ymfpci_free_gameport (struct snd_ymfpci*) ;
 int snd_ymfpci_readw (struct snd_ymfpci*,int ) ;
 int snd_ymfpci_writel (struct snd_ymfpci*,int ,int ) ;
 int snd_ymfpci_writew (struct snd_ymfpci*,int ,int) ;

__attribute__((used)) static int snd_ymfpci_free(struct snd_ymfpci *chip)
{
 u16 ctrl;

 if (snd_BUG_ON(!chip))
  return -EINVAL;

 if (chip->res_reg_area) {
  snd_ymfpci_writel(chip, YDSXGR_NATIVEDACOUTVOL, 0);
  snd_ymfpci_writel(chip, YDSXGR_BUF441OUTVOL, 0);
  snd_ymfpci_writel(chip, YDSXGR_LEGACYOUTVOL, 0);
  snd_ymfpci_writel(chip, YDSXGR_STATUS, ~0);
  snd_ymfpci_disable_dsp(chip);
  snd_ymfpci_writel(chip, YDSXGR_PLAYCTRLBASE, 0);
  snd_ymfpci_writel(chip, YDSXGR_RECCTRLBASE, 0);
  snd_ymfpci_writel(chip, YDSXGR_EFFCTRLBASE, 0);
  snd_ymfpci_writel(chip, YDSXGR_WORKBASE, 0);
  snd_ymfpci_writel(chip, YDSXGR_WORKSIZE, 0);
  ctrl = snd_ymfpci_readw(chip, YDSXGR_GLOBALCTRL);
  snd_ymfpci_writew(chip, YDSXGR_GLOBALCTRL, ctrl & ~0x0007);
 }

 snd_ymfpci_ac3_done(chip);
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 release_and_free_resource(chip->mpu_res);
 release_and_free_resource(chip->fm_res);
 snd_ymfpci_free_gameport(chip);
 iounmap(chip->reg_area_virt);
 if (chip->work_ptr.area)
  snd_dma_free_pages(&chip->work_ptr);

 release_and_free_resource(chip->res_reg_area);

 pci_write_config_word(chip->pci, 0x40, chip->old_legacy_ctrl);

 pci_disable_device(chip->pci);
 release_firmware(chip->dsp_microcode);
 release_firmware(chip->controller_microcode);
 kfree(chip);
 return 0;
}
