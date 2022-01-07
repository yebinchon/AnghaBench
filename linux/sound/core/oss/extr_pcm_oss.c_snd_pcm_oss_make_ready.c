
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int params_lock; scalar_t__ prepare; scalar_t__ params; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;


 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_oss_change_params (struct snd_pcm_substream*,int) ;
 int snd_pcm_oss_prepare (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_oss_make_ready(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;
 int err;

 runtime = substream->runtime;
 if (runtime->oss.params) {
  err = snd_pcm_oss_change_params(substream, 0);
  if (err < 0)
   return err;
 }
 if (runtime->oss.prepare) {
  if (mutex_lock_interruptible(&runtime->oss.params_lock))
   return -ERESTARTSYS;
  err = snd_pcm_oss_prepare(substream);
  mutex_unlock(&runtime->oss.params_lock);
  if (err < 0)
   return err;
 }
 return 0;
}
