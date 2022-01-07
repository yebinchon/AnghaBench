
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {scalar_t__ pos; } ;


 scalar_t__ snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 scalar_t__ snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void fsl_asrc_dma_complete(void *arg)
{
 struct snd_pcm_substream *substream = arg;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsl_asrc_pair *pair = runtime->private_data;

 pair->pos += snd_pcm_lib_period_bytes(substream);
 if (pair->pos >= snd_pcm_lib_buffer_bytes(substream))
  pair->pos = 0;

 snd_pcm_period_elapsed(substream);
}
