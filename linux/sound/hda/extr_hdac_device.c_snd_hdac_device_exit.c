
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int chip_name; int vendor_name; int bus; int dev; } ;


 int kfree (int ) ;
 int pm_runtime_put_noidle (int *) ;
 int snd_hdac_bus_remove_device (int ,struct hdac_device*) ;

void snd_hdac_device_exit(struct hdac_device *codec)
{
 pm_runtime_put_noidle(&codec->dev);
 snd_hdac_bus_remove_device(codec->bus, codec);
 kfree(codec->vendor_name);
 kfree(codec->chip_name);
}
