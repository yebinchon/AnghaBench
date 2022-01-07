
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_ssi {int dai_fmt; } ;


 int SND_SOC_DAIFMT_AC97 ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;

__attribute__((used)) static bool fsl_ssi_is_ac97(struct fsl_ssi *ssi)
{
 return (ssi->dai_fmt & SND_SOC_DAIFMT_FORMAT_MASK) ==
  SND_SOC_DAIFMT_AC97;
}
