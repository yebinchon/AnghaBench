
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_asoc_card_priv {scalar_t__ dai_fmt; } ;


 scalar_t__ SND_SOC_DAIFMT_AC97 ;

__attribute__((used)) static bool fsl_asoc_card_is_ac97(struct fsl_asoc_card_priv *priv)
{
 return priv->dai_fmt == SND_SOC_DAIFMT_AC97;
}
