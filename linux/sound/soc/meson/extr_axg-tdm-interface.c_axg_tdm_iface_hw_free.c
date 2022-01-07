
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct axg_tdm_stream {int dummy; } ;


 int axg_tdm_stream_stop (struct axg_tdm_stream*) ;
 struct axg_tdm_stream* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;

__attribute__((used)) static int axg_tdm_iface_hw_free(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct axg_tdm_stream *ts = snd_soc_dai_get_dma_data(dai, substream);


 axg_tdm_stream_stop(ts);

 return 0;
}
