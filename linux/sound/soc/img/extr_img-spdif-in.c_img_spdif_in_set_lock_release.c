
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct img_spdif_in {int lock_release; int lock; scalar_t__ active; } ;


 int EBUSY ;
 int IMG_SPDIF_IN_CTL ;
 int IMG_SPDIF_IN_CTL_LOCKLO_MASK ;
 int IMG_SPDIF_IN_CTL_LOCKLO_SHIFT ;
 int img_spdif_in_readl (struct img_spdif_in*,int ) ;
 int img_spdif_in_writel (struct img_spdif_in*,int,int ) ;
 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct img_spdif_in* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int img_spdif_in_set_lock_release(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct img_spdif_in *spdif = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&spdif->lock, flags);

 if (spdif->active) {
  spin_unlock_irqrestore(&spdif->lock, flags);
  return -EBUSY;
 }

 spdif->lock_release = ucontrol->value.integer.value[0];

 reg = img_spdif_in_readl(spdif, IMG_SPDIF_IN_CTL);
 reg &= ~IMG_SPDIF_IN_CTL_LOCKLO_MASK;
 reg |= (spdif->lock_release << IMG_SPDIF_IN_CTL_LOCKLO_SHIFT) &
  IMG_SPDIF_IN_CTL_LOCKLO_MASK;
 img_spdif_in_writel(spdif, reg, IMG_SPDIF_IN_CTL);

 spin_unlock_irqrestore(&spdif->lock, flags);

 return 0;
}
