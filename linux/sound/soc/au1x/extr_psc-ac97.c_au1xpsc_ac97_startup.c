
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct au1xpsc_audio_data {int * dmaids; } ;


 struct au1xpsc_audio_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int au1xpsc_ac97_startup(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct au1xpsc_audio_data *pscdata = snd_soc_dai_get_drvdata(dai);
 snd_soc_dai_set_dma_data(dai, substream, &pscdata->dmaids[0]);
 return 0;
}
