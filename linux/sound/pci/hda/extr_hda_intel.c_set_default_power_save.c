
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pci_quirk {int subdevice; int subvendor; } ;
struct azx {int bus; TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int ,char*,int ,int ) ;
 scalar_t__ pm_blacklist ;
 int power_save ;
 int power_save_blacklist ;
 int snd_hda_set_power_save (int *,int) ;
 struct snd_pci_quirk* snd_pci_quirk_lookup (int ,int ) ;

__attribute__((used)) static void set_default_power_save(struct azx *chip)
{
 int val = power_save;
 snd_hda_set_power_save(&chip->bus, val * 1000);
}
