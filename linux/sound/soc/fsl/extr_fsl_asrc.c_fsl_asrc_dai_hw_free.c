
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {int dummy; } ;


 int fsl_asrc_release_pair (struct fsl_asrc_pair*) ;

__attribute__((used)) static int fsl_asrc_dai_hw_free(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsl_asrc_pair *pair = runtime->private_data;

 if (pair)
  fsl_asrc_release_pair(pair);

 return 0;
}
