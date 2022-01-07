
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_codec {int capture_dma_data; int playback_dma_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dummy; } ;


 struct sun4i_codec* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_card* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int sun4i_codec_dai_probe(struct snd_soc_dai *dai)
{
 struct snd_soc_card *card = snd_soc_dai_get_drvdata(dai);
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(card);

 snd_soc_dai_init_dma_data(dai, &scodec->playback_dma_data,
      &scodec->capture_dma_data);

 return 0;
}
