
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {struct snd_hrtimer* private_data; } ;
struct snd_hrtimer {int hrt; scalar_t__ in_callback; } ;


 int hrtimer_try_to_cancel (int *) ;

__attribute__((used)) static int snd_hrtimer_stop(struct snd_timer *t)
{
 struct snd_hrtimer *stime = t->private_data;

 if (stime->in_callback)
  return 0;
 hrtimer_try_to_cancel(&stime->hrt);
 return 0;
}
