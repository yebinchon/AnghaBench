
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dev; } ;


 int device_unregister (int *) ;

void snd_ac97_compat_release(struct snd_ac97 *ac97)
{
 device_unregister(&ac97->dev);
}
