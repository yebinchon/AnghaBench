
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_minor {struct device* dev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct snd_minor**) ;
 int ENOENT ;
 int device_del (struct device*) ;
 int kfree (struct snd_minor*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_minor** snd_minors ;
 int sound_mutex ;

int snd_unregister_device(struct device *dev)
{
 int minor;
 struct snd_minor *preg;

 mutex_lock(&sound_mutex);
 for (minor = 0; minor < ARRAY_SIZE(snd_minors); ++minor) {
  preg = snd_minors[minor];
  if (preg && preg->dev == dev) {
   snd_minors[minor] = ((void*)0);
   device_del(dev);
   kfree(preg);
   break;
  }
 }
 mutex_unlock(&sound_mutex);
 if (minor >= ARRAY_SIZE(snd_minors))
  return -ENOENT;
 return 0;
}
