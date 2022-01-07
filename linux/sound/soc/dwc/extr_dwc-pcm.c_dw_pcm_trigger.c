
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct dw_i2s_dev* private_data; } ;
struct dw_i2s_dev {int rx_substream; int tx_substream; int rx_ptr; int tx_ptr; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int WRITE_ONCE (int ,int ) ;
 int rcu_assign_pointer (int ,struct snd_pcm_substream*) ;

__attribute__((used)) static int dw_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct dw_i2s_dev *dev = runtime->private_data;
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
   WRITE_ONCE(dev->tx_ptr, 0);
   rcu_assign_pointer(dev->tx_substream, substream);
  } else {
   WRITE_ONCE(dev->rx_ptr, 0);
   rcu_assign_pointer(dev->rx_substream, substream);
  }
  break;
 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   rcu_assign_pointer(dev->tx_substream, ((void*)0));
  else
   rcu_assign_pointer(dev->rx_substream, ((void*)0));
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
