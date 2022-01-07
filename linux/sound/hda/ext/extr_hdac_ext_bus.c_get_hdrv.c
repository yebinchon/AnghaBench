
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_driver {int dummy; } ;
struct device {int driver; } ;


 struct hdac_driver* drv_to_hdac_driver (int ) ;

__attribute__((used)) static inline struct hdac_driver *get_hdrv(struct device *dev)
{
 struct hdac_driver *hdrv = drv_to_hdac_driver(dev->driver);
 return hdrv;
}
