
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct es7134_data {int mclk; } ;


 int es7134_check_mclk (struct snd_soc_dai*,struct es7134_data*,int ) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct es7134_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int es7134_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct es7134_data *priv = snd_soc_dai_get_drvdata(dai);


 if (!priv->mclk)
  return 0;

 return es7134_check_mclk(dai, priv, params_rate(params));
}
