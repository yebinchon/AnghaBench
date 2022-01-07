
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct samsung_i2s_priv {int quirks; int lock; scalar_t__ addr; } ;
struct TYPE_2__ {int addr; } ;
struct i2s_dai {scalar_t__ bfs; scalar_t__ rfs; TYPE_1__ idma_playback; int dma_capture; int dma_playback; } ;


 int CON_RSTCLR ;
 int FIC_RXFLUSH ;
 int FIC_TXFLUSH ;
 scalar_t__ I2SCON ;
 int QUIRK_NEED_RSTCLR ;
 int QUIRK_SUPPORTS_IDMA ;
 int SAMSUNG_I2S_CDCLK ;
 int SND_SOC_CLOCK_IN ;
 struct i2s_dai* get_other_dai (struct i2s_dai*) ;
 int i2s_fifo (struct i2s_dai*,int ) ;
 int i2s_rxctrl (struct i2s_dai*,int ) ;
 int i2s_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 int i2s_txctrl (struct i2s_dai*,int ) ;
 int idma_reg_addr_init (scalar_t__,int ) ;
 int is_opened (struct i2s_dai*) ;
 scalar_t__ is_secondary (struct i2s_dai*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 struct samsung_i2s_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct i2s_dai* to_info (struct snd_soc_dai*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int samsung_i2s_dai_probe(struct snd_soc_dai *dai)
{
 struct samsung_i2s_priv *priv = snd_soc_dai_get_drvdata(dai);
 struct i2s_dai *i2s = to_info(dai);
 struct i2s_dai *other = get_other_dai(i2s);
 unsigned long flags;

 pm_runtime_get_sync(dai->dev);

 if (is_secondary(i2s)) {

  snd_soc_dai_init_dma_data(dai, &i2s->dma_playback, ((void*)0));
 } else {
  snd_soc_dai_init_dma_data(dai, &i2s->dma_playback,
       &i2s->dma_capture);

  if (priv->quirks & QUIRK_NEED_RSTCLR)
   writel(CON_RSTCLR, priv->addr + I2SCON);

  if (priv->quirks & QUIRK_SUPPORTS_IDMA)
   idma_reg_addr_init(priv->addr,
        other->idma_playback.addr);
 }


 i2s->rfs = 0;
 i2s->bfs = 0;

 spin_lock_irqsave(&priv->lock, flags);
 i2s_txctrl(i2s, 0);
 i2s_rxctrl(i2s, 0);
 i2s_fifo(i2s, FIC_TXFLUSH);
 i2s_fifo(other, FIC_TXFLUSH);
 i2s_fifo(i2s, FIC_RXFLUSH);
 spin_unlock_irqrestore(&priv->lock, flags);


 if (!is_opened(other))
  i2s_set_sysclk(dai, SAMSUNG_I2S_CDCLK,
    0, SND_SOC_CLOCK_IN);
 pm_runtime_put(dai->dev);

 return 0;
}
