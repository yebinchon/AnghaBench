
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {size_t index; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {struct fsl_asrc_pair** pair; } ;


 int kfree (struct fsl_asrc_pair*) ;

__attribute__((used)) static int fsl_asrc_dma_shutdown(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsl_asrc_pair *pair = runtime->private_data;
 struct fsl_asrc *asrc_priv;

 if (!pair)
  return 0;

 asrc_priv = pair->asrc_priv;

 if (asrc_priv->pair[pair->index] == pair)
  asrc_priv->pair[pair->index] = ((void*)0);

 kfree(pair);

 return 0;
}
