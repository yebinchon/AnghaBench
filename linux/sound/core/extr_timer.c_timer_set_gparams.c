
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_gparams {int period_den; int period_num; int tid; } ;
struct TYPE_2__ {int (* set_period ) (struct snd_timer*,int ,int ) ;} ;
struct snd_timer {TYPE_1__ hw; int open_list_head; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOSYS ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;
 struct snd_timer* snd_timer_find (int *) ;
 int stub1 (struct snd_timer*,int ,int ) ;

__attribute__((used)) static int timer_set_gparams(struct snd_timer_gparams *gparams)
{
 struct snd_timer *t;
 int err;

 mutex_lock(&register_mutex);
 t = snd_timer_find(&gparams->tid);
 if (!t) {
  err = -ENODEV;
  goto _error;
 }
 if (!list_empty(&t->open_list_head)) {
  err = -EBUSY;
  goto _error;
 }
 if (!t->hw.set_period) {
  err = -ENOSYS;
  goto _error;
 }
 err = t->hw.set_period(t, gparams->period_num, gparams->period_den);
_error:
 mutex_unlock(&register_mutex);
 return err;
}
