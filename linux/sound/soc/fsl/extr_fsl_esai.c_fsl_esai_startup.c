
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {int dummy; } ;
struct fsl_esai {int regmap; scalar_t__ synchronous; } ;


 int ESAI_SAICR_SYNC ;
 int ESAI_xCCR_xDC (int) ;
 int ESAI_xCCR_xDC_MASK ;
 int REG_ESAI_RCCR ;
 int REG_ESAI_SAICR ;
 int REG_ESAI_TCCR ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct fsl_esai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_esai_startup(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct fsl_esai *esai_priv = snd_soc_dai_get_drvdata(dai);

 if (!dai->active) {

  regmap_update_bits(esai_priv->regmap, REG_ESAI_SAICR,
       ESAI_SAICR_SYNC, esai_priv->synchronous ?
       ESAI_SAICR_SYNC : 0);


  regmap_update_bits(esai_priv->regmap, REG_ESAI_TCCR,
       ESAI_xCCR_xDC_MASK, ESAI_xCCR_xDC(2));
  regmap_update_bits(esai_priv->regmap, REG_ESAI_RCCR,
       ESAI_xCCR_xDC_MASK, ESAI_xCCR_xDC(2));
 }

 return 0;

}
