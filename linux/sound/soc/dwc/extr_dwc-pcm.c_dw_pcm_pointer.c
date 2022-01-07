
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; struct dw_i2s_dev* private_data; } ;
struct dw_i2s_dev {int rx_ptr; int tx_ptr; } ;
typedef scalar_t__ snd_pcm_uframes_t ;


 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static snd_pcm_uframes_t dw_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct dw_i2s_dev *dev = runtime->private_data;
 snd_pcm_uframes_t pos;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  pos = READ_ONCE(dev->tx_ptr);
 else
  pos = READ_ONCE(dev->rx_ptr);

 return pos < runtime->buffer_size ? pos : 0;
}
