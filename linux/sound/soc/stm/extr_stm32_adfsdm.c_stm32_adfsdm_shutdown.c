
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adfsdm_priv {int iio_active; int lock; int iio_cb; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int iio_channel_stop_all_cb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stm32_adfsdm_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void stm32_adfsdm_shutdown(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct stm32_adfsdm_priv *priv = snd_soc_dai_get_drvdata(dai);

 mutex_lock(&priv->lock);
 if (priv->iio_active) {
  iio_channel_stop_all_cb(priv->iio_cb);
  priv->iio_active = 0;
 }
 mutex_unlock(&priv->lock);
}
