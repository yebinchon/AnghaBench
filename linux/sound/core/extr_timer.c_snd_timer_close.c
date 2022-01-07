
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {int dummy; } ;
struct device {int dummy; } ;


 int ENXIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (struct device*) ;
 int register_mutex ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_timer_close_locked (struct snd_timer_instance*,struct device**) ;

int snd_timer_close(struct snd_timer_instance *timeri)
{
 struct device *card_dev_to_put = ((void*)0);
 int err;

 if (snd_BUG_ON(!timeri))
  return -ENXIO;

 mutex_lock(&register_mutex);
 err = snd_timer_close_locked(timeri, &card_dev_to_put);
 mutex_unlock(&register_mutex);

 if (card_dev_to_put)
  put_device(card_dev_to_put);
 return err;
}
