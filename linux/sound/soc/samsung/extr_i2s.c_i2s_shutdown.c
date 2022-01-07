
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct samsung_i2s_priv {int pcm_lock; } ;
struct i2s_dai {scalar_t__ bfs; scalar_t__ rfs; int mode; } ;


 int DAI_MANAGER ;
 int DAI_OPENED ;
 struct i2s_dai* get_other_dai (struct i2s_dai*) ;
 scalar_t__ is_opened (struct i2s_dai*) ;
 int pm_runtime_put (int ) ;
 struct samsung_i2s_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct i2s_dai* to_info (struct snd_soc_dai*) ;

__attribute__((used)) static void i2s_shutdown(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct samsung_i2s_priv *priv = snd_soc_dai_get_drvdata(dai);
 struct i2s_dai *i2s = to_info(dai);
 struct i2s_dai *other = get_other_dai(i2s);
 unsigned long flags;

 spin_lock_irqsave(&priv->pcm_lock, flags);

 i2s->mode &= ~DAI_OPENED;
 i2s->mode &= ~DAI_MANAGER;

 if (is_opened(other))
  other->mode |= DAI_MANAGER;


 i2s->rfs = 0;
 i2s->bfs = 0;

 spin_unlock_irqrestore(&priv->pcm_lock, flags);

 pm_runtime_put(dai->dev);
}
