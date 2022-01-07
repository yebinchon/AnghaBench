
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int bus; int dev; int widget_lock; } ;


 int device_del (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int hda_widget_sysfs_exit (struct hdac_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hdac_bus_remove_device (int ,struct hdac_device*) ;

void snd_hdac_device_unregister(struct hdac_device *codec)
{
 if (device_is_registered(&codec->dev)) {
  mutex_lock(&codec->widget_lock);
  hda_widget_sysfs_exit(codec);
  mutex_unlock(&codec->widget_lock);
  device_del(&codec->dev);
  snd_hdac_bus_remove_device(codec->bus, codec);
 }
}
