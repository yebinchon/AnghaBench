
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_adfsdm_priv {TYPE_1__* iio_ch; int pos; } ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {int indio_dev; } ;


 int EINVAL ;




 struct stm32_adfsdm_priv* snd_soc_dai_get_drvdata (int ) ;
 int stm32_afsdm_pcm_cb ;
 int stm32_dfsdm_get_buff_cb (int ,int ,struct stm32_adfsdm_priv*) ;
 int stm32_dfsdm_release_buff_cb (int ) ;

__attribute__((used)) static int stm32_adfsdm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct stm32_adfsdm_priv *priv =
  snd_soc_dai_get_drvdata(rtd->cpu_dai);

 switch (cmd) {
 case 130:
 case 131:
  priv->pos = 0;
  return stm32_dfsdm_get_buff_cb(priv->iio_ch->indio_dev,
            stm32_afsdm_pcm_cb, priv);
 case 128:
 case 129:
  return stm32_dfsdm_release_buff_cb(priv->iio_ch->indio_dev);
 }

 return -EINVAL;
}
