
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdif_out_dev {int running; int clk; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int clk_disable (int ) ;
 struct spdif_out_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void spdif_out_shutdown(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct spdif_out_dev *host = snd_soc_dai_get_drvdata(dai);

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return;

 clk_disable(host->clk);
 host->running = 0;
}
