
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {int dummy; } ;
struct hdac_bus {int dummy; } ;
struct device {int dummy; } ;


 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 struct hdac_bus* dev_get_drvdata (struct device*) ;

__attribute__((used)) static inline struct skl_dev *get_skl_ctx(struct device *dev)
{
 struct hdac_bus *bus = dev_get_drvdata(dev);

 return bus_to_skl(bus);
}
