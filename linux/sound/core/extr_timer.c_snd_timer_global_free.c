
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;


 int snd_timer_free (struct snd_timer*) ;

int snd_timer_global_free(struct snd_timer *timer)
{
 return snd_timer_free(timer);
}
