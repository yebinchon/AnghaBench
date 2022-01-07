
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct fsl_audmix_state {int tdms; int clk; int msg; } ;
struct fsl_audmix {int tdms; } ;


 int EINVAL ;
 unsigned int FSL_AUDMIX_CTR_MIXCLK (int) ;
 unsigned int FSL_AUDMIX_CTR_MIXCLK_MASK ;
 int dev_dbg (int ,char*,int ) ;
 struct fsl_audmix* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int fsl_audmix_state_trans(struct snd_soc_component *comp,
      unsigned int *mask, unsigned int *ctr,
      const struct fsl_audmix_state prm)
{
 struct fsl_audmix *priv = snd_soc_component_get_drvdata(comp);

 if ((priv->tdms & prm.tdms) != prm.tdms) {
  dev_dbg(comp->dev, "%s", prm.msg);
  return -EINVAL;
 }

 switch (prm.clk) {
 case 1:
 case 2:

  (*mask) |= FSL_AUDMIX_CTR_MIXCLK_MASK;
  (*ctr) |= FSL_AUDMIX_CTR_MIXCLK(prm.clk - 1);
  break;
 default:
  break;
 }

 return 0;
}
