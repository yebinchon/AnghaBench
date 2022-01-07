
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct azx {int snoop; int uc_buffer; scalar_t__ driver_type; int driver_caps; TYPE_1__* card; TYPE_2__* pci; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_3__ {int dev; } ;


 int AZX_DCAPS_SNOOP_OFF ;
 scalar_t__ AZX_DRIVER_CMEDIA ;
 scalar_t__ AZX_DRIVER_VIA ;
 scalar_t__ AZX_SNOOP_TYPE_NONE ;
 scalar_t__ azx_get_snoop_type (struct azx*) ;
 int dev_info (int ,char*,...) ;
 int hda_snoop ;
 int pci_read_config_byte (TYPE_2__*,int,int*) ;

__attribute__((used)) static void azx_check_snoop_available(struct azx *chip)
{
 int snoop = hda_snoop;

 if (snoop >= 0) {
  dev_info(chip->card->dev, "Force to %s mode by module option\n",
    snoop ? "snoop" : "non-snoop");
  chip->snoop = snoop;
  chip->uc_buffer = !snoop;
  return;
 }

 snoop = 1;
 if (azx_get_snoop_type(chip) == AZX_SNOOP_TYPE_NONE &&
     chip->driver_type == AZX_DRIVER_VIA) {



  u8 val;
  pci_read_config_byte(chip->pci, 0x42, &val);
  if (!(val & 0x80) && (chip->pci->revision == 0x30 ||
          chip->pci->revision == 0x20))
   snoop = 0;
 }

 if (chip->driver_caps & AZX_DCAPS_SNOOP_OFF)
  snoop = 0;

 chip->snoop = snoop;
 if (!snoop) {
  dev_info(chip->card->dev, "Force to non-snoop mode\n");

  if (chip->driver_type != AZX_DRIVER_CMEDIA)
   chip->uc_buffer = 1;
 }
}
