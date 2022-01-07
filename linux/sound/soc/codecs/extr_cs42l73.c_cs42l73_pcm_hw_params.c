
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs42l73_private {int mclk; TYPE_1__* config; } ;
struct TYPE_4__ {int mmcc; } ;
struct TYPE_3__ {int mmcc; int spc; int srate; } ;


 int CS42L73_MCK_SCLK_64FS ;
 int CS42L73_MCK_SCLK_MCLK ;
 int CS42L73_MMCC (int) ;
 int CS42L73_MS_MASTER ;
 int CS42L73_SPC (int) ;
 int EINVAL ;
 int cs42l73_get_mclk_coeff (int,int) ;
 TYPE_2__* cs42l73_mclk_coeffs ;
 int cs42l73_update_asrc (struct snd_soc_component*,int,int) ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct cs42l73_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int cs42l73_pcm_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs42l73_private *priv = snd_soc_component_get_drvdata(component);
 int id = dai->id;
 int mclk_coeff;
 int srate = params_rate(params);

 if (priv->config[id].mmcc & CS42L73_MS_MASTER) {


  mclk_coeff =
      cs42l73_get_mclk_coeff(priv->mclk, srate);

  if (mclk_coeff < 0)
   return -EINVAL;

  dev_dbg(component->dev,
    "DAI[%d]: MCLK %u, srate %u, MMCC[5:0] = %x\n",
    id, priv->mclk, srate,
    cs42l73_mclk_coeffs[mclk_coeff].mmcc);

  priv->config[id].mmcc &= 0xC0;
  priv->config[id].mmcc |= cs42l73_mclk_coeffs[mclk_coeff].mmcc;
  priv->config[id].spc &= 0xFC;

  if (priv->mclk >= 6400000)
   priv->config[id].spc |= CS42L73_MCK_SCLK_64FS;
  else
   priv->config[id].spc |= CS42L73_MCK_SCLK_MCLK;
 } else {

  priv->config[id].spc &= 0xFC;
  priv->config[id].spc |= CS42L73_MCK_SCLK_64FS;
 }

 priv->config[id].srate = srate;

 snd_soc_component_write(component, CS42L73_SPC(id), priv->config[id].spc);
 snd_soc_component_write(component, CS42L73_MMCC(id), priv->config[id].mmcc);

 cs42l73_update_asrc(component, id, srate);

 return 0;
}
