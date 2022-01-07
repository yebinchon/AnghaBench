
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pci_quirk {int value; int subdevice; int subvendor; } ;
struct azx {scalar_t__ driver_type; int driver_caps; TYPE_1__* card; int pci; } ;
struct TYPE_2__ {int dev; } ;


 int AZX_DCAPS_AMD_WORKAROUND ;
 int AZX_DCAPS_POSFIX_LPIB ;
 scalar_t__ AZX_DRIVER_SKL ;
 scalar_t__ AZX_DRIVER_VIA ;







 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*,int,int ,int ) ;
 int position_fix_list ;
 struct snd_pci_quirk* snd_pci_quirk_lookup (int ,int ) ;

__attribute__((used)) static int check_position_fix(struct azx *chip, int fix)
{
 const struct snd_pci_quirk *q;

 switch (fix) {
 case 134:
 case 131:
 case 130:
 case 128:
 case 133:
 case 129:
 case 132:
  return fix;
 }

 q = snd_pci_quirk_lookup(chip->pci, position_fix_list);
 if (q) {
  dev_info(chip->card->dev,
    "position_fix set to %d for device %04x:%04x\n",
    q->value, q->subvendor, q->subdevice);
  return q->value;
 }


 if (chip->driver_type == AZX_DRIVER_VIA) {
  dev_dbg(chip->card->dev, "Using VIACOMBO position fix\n");
  return 128;
 }
 if (chip->driver_caps & AZX_DCAPS_AMD_WORKAROUND) {
  dev_dbg(chip->card->dev, "Using FIFO position fix\n");
  return 132;
 }
 if (chip->driver_caps & AZX_DCAPS_POSFIX_LPIB) {
  dev_dbg(chip->card->dev, "Using LPIB position fix\n");
  return 131;
 }
 if (chip->driver_type == AZX_DRIVER_SKL) {
  dev_dbg(chip->card->dev, "Using SKL position fix\n");
  return 129;
 }
 return 134;
}
