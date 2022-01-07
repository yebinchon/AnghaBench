
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct img_spdif_out {int lock; } ;


 int IMG_SPDIF_OUT_CSH_UV ;
 int IMG_SPDIF_OUT_CSH_UV_CSH_MASK ;
 int IMG_SPDIF_OUT_CSH_UV_CSH_SHIFT ;
 int IMG_SPDIF_OUT_CSL ;
 int img_spdif_out_readl (struct img_spdif_out*,int ) ;
 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct img_spdif_out* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int img_spdif_out_get_status(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct img_spdif_out *spdif = snd_soc_dai_get_drvdata(cpu_dai);
 u32 reg;
 unsigned long flags;

 spin_lock_irqsave(&spdif->lock, flags);

 reg = img_spdif_out_readl(spdif, IMG_SPDIF_OUT_CSL);
 ucontrol->value.iec958.status[0] = reg & 0xff;
 ucontrol->value.iec958.status[1] = (reg >> 8) & 0xff;
 ucontrol->value.iec958.status[2] = (reg >> 16) & 0xff;
 ucontrol->value.iec958.status[3] = (reg >> 24) & 0xff;

 reg = img_spdif_out_readl(spdif, IMG_SPDIF_OUT_CSH_UV);
 ucontrol->value.iec958.status[4] =
  (reg & IMG_SPDIF_OUT_CSH_UV_CSH_MASK) >>
  IMG_SPDIF_OUT_CSH_UV_CSH_SHIFT;

 spin_unlock_irqrestore(&spdif->lock, flags);

 return 0;
}
