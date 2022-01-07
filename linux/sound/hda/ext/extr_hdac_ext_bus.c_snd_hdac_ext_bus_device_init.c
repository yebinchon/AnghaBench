
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; } ;
struct hdac_device {TYPE_1__ dev; int type; struct hdac_bus* bus; } ;
struct hdac_bus {int idx; int dev; } ;
typedef int name ;


 int HDA_DEV_ASOC ;
 int default_release ;
 int dev_err (int ,char*) ;
 int snd_hdac_device_init (struct hdac_device*,struct hdac_bus*,char*,int) ;
 int snd_hdac_device_register (struct hdac_device*) ;
 int snd_hdac_ext_bus_device_exit (struct hdac_device*) ;
 int snprintf (char*,int,char*,int,int) ;

int snd_hdac_ext_bus_device_init(struct hdac_bus *bus, int addr,
     struct hdac_device *hdev)
{
 char name[15];
 int ret;

 hdev->bus = bus;

 snprintf(name, sizeof(name), "ehdaudio%dD%d", bus->idx, addr);

 ret = snd_hdac_device_init(hdev, bus, name, addr);
 if (ret < 0) {
  dev_err(bus->dev, "device init failed for hdac device\n");
  return ret;
 }
 hdev->type = HDA_DEV_ASOC;
 hdev->dev.release = default_release;

 ret = snd_hdac_device_register(hdev);
 if (ret) {
  dev_err(bus->dev, "failed to register hdac device\n");
  snd_hdac_ext_bus_device_exit(hdev);
  return ret;
 }

 return 0;
}
