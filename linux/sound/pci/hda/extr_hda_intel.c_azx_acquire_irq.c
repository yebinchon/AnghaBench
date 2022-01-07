
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdac_bus {int irq; } ;
struct azx {scalar_t__ msi; TYPE_2__* pci; TYPE_1__* card; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int dev; int irq_descr; } ;


 int IRQF_SHARED ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int azx_interrupt ;
 int dev_err (int ,char*,int ) ;
 int pci_intx (TYPE_2__*,int) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct azx*) ;
 int snd_card_disconnect (TYPE_1__*) ;

__attribute__((used)) static int azx_acquire_irq(struct azx *chip, int do_disconnect)
{
 struct hdac_bus *bus = azx_bus(chip);

 if (request_irq(chip->pci->irq, azx_interrupt,
   chip->msi ? 0 : IRQF_SHARED,
   chip->card->irq_descr, chip)) {
  dev_err(chip->card->dev,
   "unable to grab IRQ %d, disabling device\n",
   chip->pci->irq);
  if (do_disconnect)
   snd_card_disconnect(chip->card);
  return -1;
 }
 bus->irq = chip->pci->irq;
 pci_intx(chip->pci, !chip->msi);
 return 0;
}
