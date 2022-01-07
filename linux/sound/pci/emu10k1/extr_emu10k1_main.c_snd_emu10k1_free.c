
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ area; } ;
struct TYPE_4__ {int firmware_work; } ;
struct snd_emu10k1 {scalar_t__ irq; int pci; TYPE_2__* card_capabilities; scalar_t__ port; int page_addr_table; int page_ptr_table; TYPE_3__ ptb_pages; TYPE_3__ silent_page; int memhdr; int dock_fw; int firmware; TYPE_1__ emu1010; } ;
struct TYPE_5__ {scalar_t__ emu_model; scalar_t__ ca0151_chip; } ;


 int EMU_HANA_DOCK_PWR ;
 scalar_t__ EMU_MODEL_EMU1010 ;
 int cancel_delayed_work_sync (int *) ;
 int free_irq (scalar_t__,struct snd_emu10k1*) ;
 int free_pm_buffer (struct snd_emu10k1*) ;
 int kfree (struct snd_emu10k1*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int release_firmware (int ) ;
 int snd_dma_free_pages (TYPE_3__*) ;
 int snd_emu1010_fpga_write (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_done (struct snd_emu10k1*) ;
 int snd_emu10k1_free_efx (struct snd_emu10k1*) ;
 int snd_emu10k1_fx8010_tram_setup (struct snd_emu10k1*,int ) ;
 int snd_p16v_free (struct snd_emu10k1*) ;
 int snd_util_memhdr_free (int ) ;
 int vfree (int ) ;

__attribute__((used)) static int snd_emu10k1_free(struct snd_emu10k1 *emu)
{
 if (emu->port) {
  snd_emu10k1_fx8010_tram_setup(emu, 0);
  snd_emu10k1_done(emu);
  snd_emu10k1_free_efx(emu);
 }
 if (emu->card_capabilities->emu_model == EMU_MODEL_EMU1010) {

  snd_emu1010_fpga_write(emu, EMU_HANA_DOCK_PWR, 0);
 }
 cancel_delayed_work_sync(&emu->emu1010.firmware_work);
 release_firmware(emu->firmware);
 release_firmware(emu->dock_fw);
 if (emu->irq >= 0)
  free_irq(emu->irq, emu);
 snd_util_memhdr_free(emu->memhdr);
 if (emu->silent_page.area)
  snd_dma_free_pages(&emu->silent_page);
 if (emu->ptb_pages.area)
  snd_dma_free_pages(&emu->ptb_pages);
 vfree(emu->page_ptr_table);
 vfree(emu->page_addr_table);



 if (emu->port)
  pci_release_regions(emu->pci);
 if (emu->card_capabilities->ca0151_chip)
  snd_p16v_free(emu);
 pci_disable_device(emu->pci);
 kfree(emu);
 return 0;
}
