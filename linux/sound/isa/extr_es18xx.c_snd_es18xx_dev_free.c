
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {int card; } ;


 int snd_es18xx_free (int ) ;

__attribute__((used)) static int snd_es18xx_dev_free(struct snd_device *device)
{
 return snd_es18xx_free(device->card);
}
