
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int directory; } ;
struct fw_device {int* config_rom; } ;
struct fw_csr_iterator {int dummy; } ;




 unsigned int DICE_CATEGORY_ID ;
 int ENODEV ;
 unsigned int LOUD_CATEGORY_ID ;
 int OUI_LOUD ;
 int OUI_WEISS ;
 unsigned int WEISS_CATEGORY_ID ;
 int fw_csr_iterator_init (struct fw_csr_iterator*,int ) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;

__attribute__((used)) static int check_dice_category(struct fw_unit *unit)
{
 struct fw_device *device = fw_parent_device(unit);
 struct fw_csr_iterator it;
 int key, val, vendor = -1, model = -1;
 unsigned int category;







 fw_csr_iterator_init(&it, unit->directory);
 while (fw_csr_iterator_next(&it, &key, &val)) {
  switch (key) {
  case 128:
   vendor = val;
   break;
  case 129:
   model = val;
   break;
  }
 }

 if (vendor == OUI_WEISS)
  category = WEISS_CATEGORY_ID;
 else if (vendor == OUI_LOUD)
  category = LOUD_CATEGORY_ID;
 else
  category = DICE_CATEGORY_ID;
 if (device->config_rom[3] != ((vendor << 8) | category) ||
     device->config_rom[4] >> 22 != model)
  return -ENODEV;

 return 0;
}
