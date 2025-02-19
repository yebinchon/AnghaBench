
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct mtk_btcvsd_snd_stream {int dummy; } ;
struct mtk_btcvsd_snd {struct mtk_btcvsd_snd_stream* rx; struct mtk_btcvsd_snd_stream* tx; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static struct mtk_btcvsd_snd_stream *get_bt_stream
 (struct mtk_btcvsd_snd *bt, struct snd_pcm_substream *substream)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return bt->tx;
 else
  return bt->rx;
}
