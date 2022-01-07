
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int params_lock; int rw_ref; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lock_params(struct snd_pcm_runtime *runtime)
{
 if (mutex_lock_interruptible(&runtime->oss.params_lock))
  return -ERESTARTSYS;
 if (atomic_read(&runtime->oss.rw_ref)) {
  mutex_unlock(&runtime->oss.params_lock);
  return -EBUSY;
 }
 return 0;
}
