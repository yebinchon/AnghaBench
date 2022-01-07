
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int params_lock; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void unlock_params(struct snd_pcm_runtime *runtime)
{
 mutex_unlock(&runtime->oss.params_lock);
}
