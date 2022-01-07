
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pci_quirk {int value; } ;
struct pci_dev {int subsystem_device; int subsystem_vendor; } ;
struct intel8x0 {TYPE_2__* ac97_bus; TYPE_1__* card; struct pci_dev* pci; } ;
struct TYPE_4__ {int clock; } ;
struct TYPE_3__ {int dev; } ;


 int dev_info (int ,char*,int ,int ,int ) ;
 int intel8x0_clock_list ;
 struct snd_pci_quirk* snd_pci_quirk_lookup (struct pci_dev*,int ) ;

__attribute__((used)) static int intel8x0_in_clock_list(struct intel8x0 *chip)
{
 struct pci_dev *pci = chip->pci;
 const struct snd_pci_quirk *wl;

 wl = snd_pci_quirk_lookup(pci, intel8x0_clock_list);
 if (!wl)
  return 0;
 dev_info(chip->card->dev, "white list rate for %04x:%04x is %i\n",
        pci->subsystem_vendor, pci->subsystem_device, wl->value);
 chip->ac97_bus->clock = wl->value;
 return 1;
}
