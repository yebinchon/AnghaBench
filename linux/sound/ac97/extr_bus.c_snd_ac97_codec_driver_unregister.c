
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec_driver {int driver; } ;


 int driver_unregister (int *) ;

void snd_ac97_codec_driver_unregister(struct ac97_codec_driver *drv)
{
 driver_unregister(&drv->driver);
}
