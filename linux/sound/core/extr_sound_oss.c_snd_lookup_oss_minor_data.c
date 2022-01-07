
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_minor {int type; TYPE_1__* card_ptr; void* private_data; } ;
struct TYPE_2__ {int card_dev; } ;


 unsigned int ARRAY_SIZE (struct snd_minor**) ;
 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_minor** snd_oss_minors ;
 int sound_oss_mutex ;

void *snd_lookup_oss_minor_data(unsigned int minor, int type)
{
 struct snd_minor *mreg;
 void *private_data;

 if (minor >= ARRAY_SIZE(snd_oss_minors))
  return ((void*)0);
 mutex_lock(&sound_oss_mutex);
 mreg = snd_oss_minors[minor];
 if (mreg && mreg->type == type) {
  private_data = mreg->private_data;
  if (private_data && mreg->card_ptr)
   get_device(&mreg->card_ptr->card_dev);
 } else
  private_data = ((void*)0);
 mutex_unlock(&sound_oss_mutex);
 return private_data;
}
