
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spdif_mixer_control {int * ch_status; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fsl_spdif_priv {struct spdif_mixer_control fsl_spdif_control; } ;


 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct fsl_spdif_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spdif_write_channel_status (struct fsl_spdif_priv*) ;

__attribute__((used)) static int fsl_spdif_pb_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *uvalue)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct fsl_spdif_priv *spdif_priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct spdif_mixer_control *ctrl = &spdif_priv->fsl_spdif_control;

 ctrl->ch_status[0] = uvalue->value.iec958.status[0];
 ctrl->ch_status[1] = uvalue->value.iec958.status[1];
 ctrl->ch_status[2] = uvalue->value.iec958.status[2];
 ctrl->ch_status[3] = uvalue->value.iec958.status[3];

 spdif_write_channel_status(spdif_priv);

 return 0;
}
