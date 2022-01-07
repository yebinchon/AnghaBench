
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {scalar_t__ msbits; } ;
struct au1xpsc_audio_data {scalar_t__ rate; int cfg; } ;


 int EINVAL ;
 int I2S_CFG (struct au1xpsc_audio_data*) ;
 int I2S_STAT (struct au1xpsc_audio_data*) ;
 scalar_t__ PSC_I2SCFG_GET_LEN (int) ;
 int PSC_I2SCFG_SET_LEN (scalar_t__) ;
 unsigned long PSC_I2SSTAT_RB ;
 unsigned long PSC_I2SSTAT_TB ;
 void* __raw_readl (int ) ;
 scalar_t__ params_rate (struct snd_pcm_hw_params*) ;
 struct au1xpsc_audio_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int au1xpsc_i2s_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct au1xpsc_audio_data *pscdata = snd_soc_dai_get_drvdata(dai);

 int cfgbits;
 unsigned long stat;


 stat = __raw_readl(I2S_STAT(pscdata));
 if (stat & (PSC_I2SSTAT_TB | PSC_I2SSTAT_RB)) {

  cfgbits = __raw_readl(I2S_CFG(pscdata));
  if ((PSC_I2SCFG_GET_LEN(cfgbits) != params->msbits) ||
      (params_rate(params) != pscdata->rate))
   return -EINVAL;
 } else {

  pscdata->cfg &= ~(0x1f << 4);
  pscdata->cfg |= PSC_I2SCFG_SET_LEN(params->msbits);

  pscdata->rate = params_rate(params);
 }
 return 0;
}
