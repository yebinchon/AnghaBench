
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_driver {struct hda_device_id* id_table; } ;
struct hdac_device {scalar_t__ vendor_id; scalar_t__ revision_id; } ;
struct hda_device_id {scalar_t__ vendor_id; scalar_t__ rev_id; } ;



const struct hda_device_id *
hdac_get_device_id(struct hdac_device *hdev, struct hdac_driver *drv)
{
 if (drv->id_table) {
  const struct hda_device_id *id = drv->id_table;

  while (id->vendor_id) {
   if (hdev->vendor_id == id->vendor_id &&
    (!id->rev_id || id->rev_id == hdev->revision_id))
    return id;
   id++;
  }
 }

 return ((void*)0);
}
