
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dg00x {int dev_lock_changed; int hwdep_wait; } ;


 int wake_up (int *) ;

void snd_dg00x_stream_lock_changed(struct snd_dg00x *dg00x)
{
 dg00x->dev_lock_changed = 1;
 wake_up(&dg00x->hwdep_wait);
}
