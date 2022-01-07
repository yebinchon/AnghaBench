
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_device {struct snd_timer* device_data; } ;


 int snd_timer_free (struct snd_timer*) ;

__attribute__((used)) static int snd_timer_dev_free(struct snd_device *device)
{
 struct snd_timer *timer = device->device_data;
 return snd_timer_free(timer);
}
