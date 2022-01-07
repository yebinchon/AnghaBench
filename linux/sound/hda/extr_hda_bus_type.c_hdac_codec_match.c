
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_driver {int dummy; } ;
struct hdac_device {int dummy; } ;


 scalar_t__ hdac_get_device_id (struct hdac_device*,struct hdac_driver*) ;

__attribute__((used)) static int hdac_codec_match(struct hdac_device *dev, struct hdac_driver *drv)
{
 if (hdac_get_device_id(dev, drv))
  return 1;
 else
  return 0;
}
