
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_harmony {int dummy; } ;
struct snd_device {struct snd_harmony* device_data; } ;


 int snd_harmony_free (struct snd_harmony*) ;

__attribute__((used)) static int
snd_harmony_dev_free(struct snd_device *dev)
{
 struct snd_harmony *h = dev->device_data;
 return snd_harmony_free(h);
}
