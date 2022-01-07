
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fsl_spdif_priv {scalar_t__ dpll_locked; } ;


 int SPDIF_DEFAULT_GAINSEL ;
 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct fsl_spdif_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spdif_get_rxclk_rate (struct fsl_spdif_priv*,int ) ;

__attribute__((used)) static int fsl_spdif_rxrate_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct fsl_spdif_priv *spdif_priv = snd_soc_dai_get_drvdata(cpu_dai);
 int rate = 0;

 if (spdif_priv->dpll_locked)
  rate = spdif_get_rxclk_rate(spdif_priv, SPDIF_DEFAULT_GAINSEL);

 ucontrol->value.integer.value[0] = rate;

 return 0;
}
