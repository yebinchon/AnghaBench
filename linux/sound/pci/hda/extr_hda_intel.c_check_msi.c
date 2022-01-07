
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pci_quirk {int value; int subdevice; int subvendor; } ;
struct azx {int msi; int driver_caps; TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 int AZX_DCAPS_NO_MSI ;
 int dev_info (int ,char*,...) ;
 scalar_t__ enable_msi ;
 int msi_black_list ;
 struct snd_pci_quirk* snd_pci_quirk_lookup (int ,int ) ;

__attribute__((used)) static void check_msi(struct azx *chip)
{
 const struct snd_pci_quirk *q;

 if (enable_msi >= 0) {
  chip->msi = !!enable_msi;
  return;
 }
 chip->msi = 1;
 q = snd_pci_quirk_lookup(chip->pci, msi_black_list);
 if (q) {
  dev_info(chip->card->dev,
    "msi for device %04x:%04x set to %d\n",
    q->subvendor, q->subdevice, q->value);
  chip->msi = q->value;
  return;
 }


 if (chip->driver_caps & AZX_DCAPS_NO_MSI) {
  dev_info(chip->card->dev, "Disabling MSI\n");
  chip->msi = 0;
 }
}
