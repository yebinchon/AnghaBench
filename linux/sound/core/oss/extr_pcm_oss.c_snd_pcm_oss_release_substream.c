
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ oss; } ;
struct snd_pcm_substream {TYPE_2__ oss; struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int * buffer; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;


 int kvfree (int *) ;
 int snd_pcm_oss_plugin_clear (struct snd_pcm_substream*) ;

__attribute__((used)) static void snd_pcm_oss_release_substream(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime;
 runtime = substream->runtime;
 kvfree(runtime->oss.buffer);
 runtime->oss.buffer = ((void*)0);



 substream->oss.oss = 0;
}
