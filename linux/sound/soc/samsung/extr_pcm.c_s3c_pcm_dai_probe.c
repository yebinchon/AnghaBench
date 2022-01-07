
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct s3c_pcm_info {int dma_capture; int dma_playback; } ;


 struct s3c_pcm_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int ,int ) ;

__attribute__((used)) static int s3c_pcm_dai_probe(struct snd_soc_dai *dai)
{
 struct s3c_pcm_info *pcm = snd_soc_dai_get_drvdata(dai);

 snd_soc_dai_init_dma_data(dai, pcm->dma_playback, pcm->dma_capture);

 return 0;
}
