
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int sticks; struct snd_hrtimer* private_data; } ;
struct snd_hrtimer {int hrt; scalar_t__ in_callback; } ;


 int HRTIMER_MODE_REL ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (int) ;
 int resolution ;

__attribute__((used)) static int snd_hrtimer_start(struct snd_timer *t)
{
 struct snd_hrtimer *stime = t->private_data;

 if (stime->in_callback)
  return 0;
 hrtimer_start(&stime->hrt, ns_to_ktime(t->sticks * resolution),
        HRTIMER_MODE_REL);
 return 0;
}
