
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int dummy; } ;
struct snd_device {struct snd_pcm* device_data; } ;


 int snd_pcm_free (struct snd_pcm*) ;

__attribute__((used)) static int snd_pcm_dev_free(struct snd_device *device)
{
 struct snd_pcm *pcm = device->device_data;
 return snd_pcm_free(pcm);
}
