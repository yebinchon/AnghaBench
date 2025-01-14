
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct samsung_i2s_priv {int quirks; int lock; scalar_t__ addr; } ;
struct i2s_dai {int dummy; } ;


 scalar_t__ I2SCON ;
 int QUIRK_NEED_RSTCLR ;
 int is_secondary (struct i2s_dai*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 struct samsung_i2s_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct i2s_dai* to_info (struct snd_soc_dai*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int samsung_i2s_dai_remove(struct snd_soc_dai *dai)
{
 struct samsung_i2s_priv *priv = snd_soc_dai_get_drvdata(dai);
 struct i2s_dai *i2s = to_info(dai);
 unsigned long flags;

 pm_runtime_get_sync(dai->dev);

 if (!is_secondary(i2s)) {
  if (priv->quirks & QUIRK_NEED_RSTCLR) {
   spin_lock_irqsave(&priv->lock, flags);
   writel(0, priv->addr + I2SCON);
   spin_unlock_irqrestore(&priv->lock, flags);
  }
 }

 pm_runtime_put(dai->dev);

 return 0;
}
