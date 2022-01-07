
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_ali* device_data; } ;
struct snd_ali {int dummy; } ;


 int snd_ali_free (struct snd_ali*) ;

__attribute__((used)) static int snd_ali_dev_free(struct snd_device *device)
{
 struct snd_ali *codec = device->device_data;
 snd_ali_free(codec);
 return 0;
}
