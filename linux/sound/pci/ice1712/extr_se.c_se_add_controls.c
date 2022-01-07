
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;


 scalar_t__ VT1724_SUBDEVICE_SE200PCI ;
 int se200pci_add_controls (struct snd_ice1712*) ;

__attribute__((used)) static int se_add_controls(struct snd_ice1712 *ice)
{
 int err;

 err = 0;

 if (ice->eeprom.subvendor == VT1724_SUBDEVICE_SE200PCI)
  err = se200pci_add_controls(ice);

 return err;
}
