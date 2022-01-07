
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ area; } ;
struct TYPE_3__ {TYPE_2__ buffer; int shadow_entries; TYPE_2__ silent_page; int memhdr; } ;
struct snd_trident {scalar_t__ device; scalar_t__ irq; int pci; TYPE_1__ tlb; } ;


 scalar_t__ NX_SPCTRL_SPCSO ;
 scalar_t__ NX_TLBC ;
 scalar_t__ SI_SERIAL_INTF_CTRL ;
 scalar_t__ TRIDENT_DEVICE_ID_NX ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,scalar_t__) ;
 int free_irq (scalar_t__,struct snd_trident*) ;
 int kfree (struct snd_trident*) ;
 int outb (int,int ) ;
 int outl (int ,int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_dma_free_pages (TYPE_2__*) ;
 int snd_trident_disable_eso (struct snd_trident*) ;
 int snd_trident_free_gameport (struct snd_trident*) ;
 int snd_util_memhdr_free (int ) ;
 int vfree (int ) ;

__attribute__((used)) static int snd_trident_free(struct snd_trident *trident)
{
 snd_trident_free_gameport(trident);
 snd_trident_disable_eso(trident);

 if (trident->device == TRIDENT_DEVICE_ID_NX)
  outb(0x00, TRID_REG(trident, NX_SPCTRL_SPCSO + 3));
 else if (trident->device == TRIDENT_DEVICE_ID_SI7018) {
  outl(0, TRID_REG(trident, SI_SERIAL_INTF_CTRL));
 }
 if (trident->irq >= 0)
  free_irq(trident->irq, trident);
 if (trident->tlb.buffer.area) {
  outl(0, TRID_REG(trident, NX_TLBC));
  snd_util_memhdr_free(trident->tlb.memhdr);
  if (trident->tlb.silent_page.area)
   snd_dma_free_pages(&trident->tlb.silent_page);
  vfree(trident->tlb.shadow_entries);
  snd_dma_free_pages(&trident->tlb.buffer);
 }
 pci_release_regions(trident->pci);
 pci_disable_device(trident->pci);
 kfree(trident);
 return 0;
}
