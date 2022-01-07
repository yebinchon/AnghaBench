
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs42l73_private {int mclksel; int sysclk; int mclk; } ;
struct TYPE_2__ {int mclkx; int ratio; int mclkdiv; } ;


 int CS42L73_DMMCC ;
 int cs42l73_get_mclkx_coeff (unsigned int) ;
 TYPE_1__* cs42l73_mclkx_coeffs ;
 int dev_dbg (int ,char*,int,int,int) ;
 struct cs42l73_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int cs42l73_set_mclk(struct snd_soc_dai *dai, unsigned int freq)
{
 struct snd_soc_component *component = dai->component;
 struct cs42l73_private *priv = snd_soc_component_get_drvdata(component);

 int mclkx_coeff;
 u32 mclk = 0;
 u8 dmmcc = 0;


 mclkx_coeff = cs42l73_get_mclkx_coeff(freq);
 if (mclkx_coeff < 0)
  return mclkx_coeff;

 mclk = cs42l73_mclkx_coeffs[mclkx_coeff].mclkx /
  cs42l73_mclkx_coeffs[mclkx_coeff].ratio;

 dev_dbg(component->dev, "MCLK%u %u  <-> internal MCLK %u\n",
   priv->mclksel + 1, cs42l73_mclkx_coeffs[mclkx_coeff].mclkx,
   mclk);

 dmmcc = (priv->mclksel << 4) |
  (cs42l73_mclkx_coeffs[mclkx_coeff].mclkdiv << 1);

 snd_soc_component_write(component, CS42L73_DMMCC, dmmcc);

 priv->sysclk = mclkx_coeff;
 priv->mclk = mclk;

 return 0;
}
