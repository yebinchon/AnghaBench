
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {struct loopback_pcm* private_data; } ;
struct loopback_pcm {int dummy; } ;


 int kfree (struct loopback_pcm*) ;

__attribute__((used)) static void loopback_runtime_free(struct snd_pcm_runtime *runtime)
{
 struct loopback_pcm *dpcm = runtime->private_data;
 kfree(dpcm);
}
