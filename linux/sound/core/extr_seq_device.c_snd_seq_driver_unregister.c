
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_driver {int driver; } ;


 int driver_unregister (int *) ;

void snd_seq_driver_unregister(struct snd_seq_driver *drv)
{
 driver_unregister(&drv->driver);
}
