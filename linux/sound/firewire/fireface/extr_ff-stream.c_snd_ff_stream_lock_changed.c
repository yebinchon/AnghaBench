
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {int dev_lock_changed; int hwdep_wait; } ;


 int wake_up (int *) ;

void snd_ff_stream_lock_changed(struct snd_ff *ff)
{
 ff->dev_lock_changed = 1;
 wake_up(&ff->hwdep_wait);
}
