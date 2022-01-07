
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ area; } ;
struct emu10k1x {scalar_t__ irq; int pci; TYPE_1__ dma_buffer; int res_port; scalar_t__ port; } ;


 scalar_t__ HCFG ;
 int HCFG_LOCKSOUNDCACHE ;
 scalar_t__ INTE ;
 int TRIGGER_CHANNEL ;
 int free_irq (scalar_t__,struct emu10k1x*) ;
 int kfree (struct emu10k1x*) ;
 int outl (int ,scalar_t__) ;
 int pci_disable_device (int ) ;
 int release_and_free_resource (int ) ;
 int snd_dma_free_pages (TYPE_1__*) ;
 int snd_emu10k1x_ptr_write (struct emu10k1x*,int ,int ,int ) ;

__attribute__((used)) static int snd_emu10k1x_free(struct emu10k1x *chip)
{
 snd_emu10k1x_ptr_write(chip, TRIGGER_CHANNEL, 0, 0);

 outl(0, chip->port + INTE);

 outl(HCFG_LOCKSOUNDCACHE, chip->port + HCFG);


 if (chip->irq >= 0)
  free_irq(chip->irq, chip);


 release_and_free_resource(chip->res_port);


 if (chip->dma_buffer.area) {
  snd_dma_free_pages(&chip->dma_buffer);
 }

 pci_disable_device(chip->pci);


 kfree(chip);
 return 0;
}
