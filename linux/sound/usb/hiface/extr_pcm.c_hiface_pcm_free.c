
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {struct pcm_runtime* private_data; } ;
struct pcm_runtime {int chip; } ;


 int hiface_pcm_destroy (int ) ;

__attribute__((used)) static void hiface_pcm_free(struct snd_pcm *pcm)
{
 struct pcm_runtime *rt = pcm->private_data;

 if (rt)
  hiface_pcm_destroy(rt->chip);
}
