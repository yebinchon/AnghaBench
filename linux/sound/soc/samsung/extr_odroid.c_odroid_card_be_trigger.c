
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct odroid_priv {int be_active; int lock; } ;
 struct odroid_priv* snd_soc_card_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int odroid_card_be_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct odroid_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  priv->be_active = 1;
  break;

 case 129:
 case 128:
 case 133:
  priv->be_active = 0;
  break;
 }

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
