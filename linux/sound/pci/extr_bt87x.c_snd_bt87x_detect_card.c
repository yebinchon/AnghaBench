
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; int dev; int device; } ;
struct TYPE_3__ {scalar_t__ subvendor; scalar_t__ subdevice; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EBUSY ;
 int SND_BT87X_BOARD_UNKNOWN ;
 TYPE_1__* blacklist ;
 int dev_dbg (int *,char*,int ,scalar_t__,scalar_t__) ;
 int dev_info (int *,char*,...) ;
 struct pci_device_id* pci_match_id (int ,struct pci_dev*) ;
 int snd_bt87x_ids ;

__attribute__((used)) static int snd_bt87x_detect_card(struct pci_dev *pci)
{
 int i;
 const struct pci_device_id *supported;

 supported = pci_match_id(snd_bt87x_ids, pci);
 if (supported && supported->driver_data > 0)
  return supported->driver_data;

 for (i = 0; i < ARRAY_SIZE(blacklist); ++i)
  if (blacklist[i].subvendor == pci->subsystem_vendor &&
      blacklist[i].subdevice == pci->subsystem_device) {
   dev_dbg(&pci->dev,
    "card %#04x-%#04x:%#04x has no audio\n",
        pci->device, pci->subsystem_vendor, pci->subsystem_device);
   return -EBUSY;
  }

 dev_info(&pci->dev, "unknown card %#04x-%#04x:%#04x\n",
     pci->device, pci->subsystem_vendor, pci->subsystem_device);
 dev_info(&pci->dev, "please mail id, board name, and, "
     "if it works, the correct digital_rate option to "
     "<alsa-devel@alsa-project.org>\n");
 return SND_BT87X_BOARD_UNKNOWN;
}
