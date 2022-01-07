
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct snd_pci_quirk {scalar_t__ value; } ;
struct ct_atc {int chip_type; char* chip_name; scalar_t__ model; int model_name; TYPE_2__* card; TYPE_1__* pci; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {unsigned int subsystem_vendor; unsigned int subsystem_device; } ;




 scalar_t__ CT20K1_UNKNOWN ;
 scalar_t__ CT20K2_UNKNOWN ;
 int ENOENT ;
 int * ct_subsys_name ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 int dev_info (int ,char*,char*,int ,unsigned int,unsigned int) ;
 struct snd_pci_quirk* snd_pci_quirk_lookup_id (unsigned int,unsigned int,struct snd_pci_quirk const*) ;
 struct snd_pci_quirk* subsys_20k1_list ;
 struct snd_pci_quirk* subsys_20k2_list ;

__attribute__((used)) static int atc_identify_card(struct ct_atc *atc, unsigned int ssid)
{
 const struct snd_pci_quirk *p;
 const struct snd_pci_quirk *list;
 u16 vendor_id, device_id;

 switch (atc->chip_type) {
 case 129:
  atc->chip_name = "20K1";
  list = subsys_20k1_list;
  break;
 case 128:
  atc->chip_name = "20K2";
  list = subsys_20k2_list;
  break;
 default:
  return -ENOENT;
 }
 if (ssid) {
  vendor_id = ssid >> 16;
  device_id = ssid & 0xffff;
 } else {
  vendor_id = atc->pci->subsystem_vendor;
  device_id = atc->pci->subsystem_device;
 }
 p = snd_pci_quirk_lookup_id(vendor_id, device_id, list);
 if (p) {
  if (p->value < 0) {
   dev_err(atc->card->dev,
    "Device %04x:%04x is black-listed\n",
    vendor_id, device_id);
   return -ENOENT;
  }
  atc->model = p->value;
 } else {
  if (atc->chip_type == 129)
   atc->model = CT20K1_UNKNOWN;
  else
   atc->model = CT20K2_UNKNOWN;
 }
 atc->model_name = ct_subsys_name[atc->model];
 dev_info(atc->card->dev, "chip %s model %s (%04x:%04x) is found\n",
     atc->chip_name, atc->model_name,
     vendor_id, device_id);
 return 0;
}
