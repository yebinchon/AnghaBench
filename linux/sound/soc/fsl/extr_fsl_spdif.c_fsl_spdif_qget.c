
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spdif_mixer_control {int ready_buf; int ctl_lock; int * qsub; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fsl_spdif_priv {struct spdif_mixer_control fsl_spdif_control; } ;


 int EAGAIN ;
 int SPDIF_QSUB_SIZE ;
 int memcpy (int *,int *,int) ;
 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct fsl_spdif_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fsl_spdif_qget(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct fsl_spdif_priv *spdif_priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct spdif_mixer_control *ctrl = &spdif_priv->fsl_spdif_control;
 unsigned long flags;
 int ret = -EAGAIN;

 spin_lock_irqsave(&ctrl->ctl_lock, flags);
 if (ctrl->ready_buf) {
  int idx = (ctrl->ready_buf - 1) * SPDIF_QSUB_SIZE;
  memcpy(&ucontrol->value.bytes.data[0],
    &ctrl->qsub[idx], SPDIF_QSUB_SIZE);
  ret = 0;
 }
 spin_unlock_irqrestore(&ctrl->ctl_lock, flags);

 return ret;
}
