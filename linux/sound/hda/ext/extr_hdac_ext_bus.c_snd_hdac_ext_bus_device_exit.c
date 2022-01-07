
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 int snd_hdac_device_exit (struct hdac_device*) ;

void snd_hdac_ext_bus_device_exit(struct hdac_device *hdev)
{
 snd_hdac_device_exit(hdev);
}
