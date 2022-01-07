
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct odroid_priv {scalar_t__ be_sample_rate; int lock; scalar_t__ be_active; } ;


 int EINVAL ;
 scalar_t__ params_rate (struct snd_pcm_hw_params*) ;
 struct odroid_priv* snd_soc_card_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int odroid_card_fe_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct odroid_priv *priv = snd_soc_card_get_drvdata(rtd->card);
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&priv->lock, flags);
 if (priv->be_active && priv->be_sample_rate != params_rate(params))
  ret = -EINVAL;
 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;
}
