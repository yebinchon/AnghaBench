
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct au1xpsc_audio_data {int cfg; } ;


 int CFG_RN ;
 int CFG_TN ;
 int EINVAL ;
 int EN_CE ;
 int EN_D ;
 int I2S_CFG ;
 int I2S_ENABLE ;
 int PCM_TX ;




 int SUBSTREAM_TYPE (struct snd_pcm_substream*) ;
 int WR (struct au1xpsc_audio_data*,int ,int) ;
 struct au1xpsc_audio_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int au1xi2s_trigger(struct snd_pcm_substream *substream,
      int cmd, struct snd_soc_dai *dai)
{
 struct au1xpsc_audio_data *ctx = snd_soc_dai_get_drvdata(dai);
 int stype = SUBSTREAM_TYPE(substream);

 switch (cmd) {
 case 130:
 case 131:

  WR(ctx, I2S_ENABLE, EN_D | EN_CE);
  WR(ctx, I2S_ENABLE, EN_CE);
  ctx->cfg |= (stype == PCM_TX) ? CFG_TN : CFG_RN;
  WR(ctx, I2S_CFG, ctx->cfg);
  break;
 case 129:
 case 128:
  ctx->cfg &= ~((stype == PCM_TX) ? CFG_TN : CFG_RN);
  WR(ctx, I2S_CFG, ctx->cfg);
  WR(ctx, I2S_ENABLE, EN_D);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
