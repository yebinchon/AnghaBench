
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct s3c24xx_uda134x {scalar_t__ clk_users; int clk_lock; int * pclk; int * xtal; } ;


 int clk_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s3c24xx_uda134x* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static void s3c24xx_uda134x_shutdown(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct s3c24xx_uda134x *priv = snd_soc_card_get_drvdata(rtd->card);

 mutex_lock(&priv->clk_lock);
 priv->clk_users -= 1;
 if (priv->clk_users == 0) {
  clk_put(priv->xtal);
  priv->xtal = ((void*)0);
  clk_put(priv->pclk);
  priv->pclk = ((void*)0);
 }
 mutex_unlock(&priv->clk_lock);
}
