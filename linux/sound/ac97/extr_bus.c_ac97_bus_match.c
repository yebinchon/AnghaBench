
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ac97_id {int mask; int id; } ;
struct ac97_codec_driver {struct ac97_id* id_table; } ;
struct ac97_codec_device {int vendor_id; } ;


 scalar_t__ ac97_ids_match (int ,int,int ) ;
 struct ac97_codec_device* to_ac97_device (struct device*) ;
 struct ac97_codec_driver* to_ac97_driver (struct device_driver*) ;

__attribute__((used)) static int ac97_bus_match(struct device *dev, struct device_driver *drv)
{
 struct ac97_codec_device *adev = to_ac97_device(dev);
 struct ac97_codec_driver *adrv = to_ac97_driver(drv);
 const struct ac97_id *id = adrv->id_table;
 int i = 0;

 if (adev->vendor_id == 0x0 || adev->vendor_id == 0xffffffff)
  return 0;

 do {
  if (ac97_ids_match(id[i].id, adev->vendor_id, id[i].mask))
   return 1;
 } while (id[i++].id);

 return 0;
}
