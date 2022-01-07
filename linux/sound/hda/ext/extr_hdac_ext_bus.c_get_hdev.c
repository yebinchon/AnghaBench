
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
struct device {int dummy; } ;


 struct hdac_device* dev_to_hdac_dev (struct device*) ;

__attribute__((used)) static inline struct hdac_device *get_hdev(struct device *dev)
{
 struct hdac_device *hdev = dev_to_hdac_dev(dev);
 return hdev;
}
