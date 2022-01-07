
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct samsung_i2s_priv {int lock; } ;
struct i2s_dai {int dummy; } ;


 int EINVAL ;
 int FIC_RXFLUSH ;
 int FIC_TXFLUSH ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;






 int config_setup (struct i2s_dai*) ;
 int i2s_fifo (struct i2s_dai*,int ) ;
 int i2s_rxctrl (struct i2s_dai*,int) ;
 int i2s_txctrl (struct i2s_dai*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 struct samsung_i2s_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct i2s_dai* to_info (int ) ;

__attribute__((used)) static int i2s_trigger(struct snd_pcm_substream *substream,
 int cmd, struct snd_soc_dai *dai)
{
 struct samsung_i2s_priv *priv = snd_soc_dai_get_drvdata(dai);
 int capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct i2s_dai *i2s = to_info(rtd->cpu_dai);
 unsigned long flags;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  pm_runtime_get_sync(dai->dev);
  spin_lock_irqsave(&priv->lock, flags);

  if (config_setup(i2s)) {
   spin_unlock_irqrestore(&priv->lock, flags);
   return -EINVAL;
  }

  if (capture)
   i2s_rxctrl(i2s, 1);
  else
   i2s_txctrl(i2s, 1);

  spin_unlock_irqrestore(&priv->lock, flags);
  break;
 case 129:
 case 128:
 case 133:
  spin_lock_irqsave(&priv->lock, flags);

  if (capture) {
   i2s_rxctrl(i2s, 0);
   i2s_fifo(i2s, FIC_RXFLUSH);
  } else {
   i2s_txctrl(i2s, 0);
   i2s_fifo(i2s, FIC_TXFLUSH);
  }

  spin_unlock_irqrestore(&priv->lock, flags);
  pm_runtime_put(dai->dev);
  break;
 }

 return 0;
}
