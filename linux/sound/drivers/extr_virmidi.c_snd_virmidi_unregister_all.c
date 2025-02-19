
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * devices ;
 int platform_device_unregister (int ) ;
 int platform_driver_unregister (int *) ;
 int snd_virmidi_driver ;

__attribute__((used)) static void snd_virmidi_unregister_all(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(devices); ++i)
  platform_device_unregister(devices[i]);
 platform_driver_unregister(&snd_virmidi_driver);
}
