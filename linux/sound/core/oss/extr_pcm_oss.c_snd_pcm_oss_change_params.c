
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int params_lock; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;


 int EAGAIN ;
 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_oss_change_params_locked (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_oss_change_params(struct snd_pcm_substream *substream,
         bool trylock)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 if (trylock) {
  if (!(mutex_trylock(&runtime->oss.params_lock)))
   return -EAGAIN;
 } else if (mutex_lock_interruptible(&runtime->oss.params_lock))
  return -ERESTARTSYS;

 err = snd_pcm_oss_change_params_locked(substream);
 mutex_unlock(&runtime->oss.params_lock);
 return err;
}
