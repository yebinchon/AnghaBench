
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct es7241_data {unsigned int mclk; scalar_t__ is_slave; TYPE_1__* chip; } ;
struct es7241_clock_mode {unsigned int rate_min; unsigned int rate_max; } ;
struct TYPE_2__ {int mode_num; struct es7241_clock_mode* modes; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int) ;
 int es7241_set_master_mode (struct es7241_data*,struct es7241_clock_mode const*,unsigned int) ;
 int es7241_set_slave_mode (struct es7241_data*,struct es7241_clock_mode const*,unsigned int) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 struct es7241_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int es7241_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct es7241_data *priv = snd_soc_dai_get_drvdata(dai);
 unsigned int rate = params_rate(params);
 unsigned int mfs = priv->mclk / rate;
 int i;

 for (i = 0; i < priv->chip->mode_num; i++) {
  const struct es7241_clock_mode *mode = &priv->chip->modes[i];

  if (rate < mode->rate_min || rate >= mode->rate_max)
   continue;

  if (priv->is_slave)
   return es7241_set_slave_mode(priv, mode, mfs);
  else
   return es7241_set_master_mode(priv, mode, mfs);
 }


 dev_err(dai->dev, "unsupported rate: %u\n", rate);
 return -EINVAL;
}
