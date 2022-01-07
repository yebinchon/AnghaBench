
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int * private_data; } ;



__attribute__((used)) static int snd_sgio2audio_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 runtime->private_data = ((void*)0);
 return 0;
}
