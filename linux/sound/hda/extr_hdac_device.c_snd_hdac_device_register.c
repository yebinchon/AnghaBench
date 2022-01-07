
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dev; int widget_lock; } ;


 int device_add (int *) ;
 int device_del (int *) ;
 int hda_widget_sysfs_init (struct hdac_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_hdac_device_register(struct hdac_device *codec)
{
 int err;

 err = device_add(&codec->dev);
 if (err < 0)
  return err;
 mutex_lock(&codec->widget_lock);
 err = hda_widget_sysfs_init(codec);
 mutex_unlock(&codec->widget_lock);
 if (err < 0) {
  device_del(&codec->dev);
  return err;
 }

 return 0;
}
