
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; int lock; } ;
struct snd_vxpocket {int regCDSP; } ;


 int MICRO ;
 int VXP_CDSP_MIC_SEL_MASK ;
 int VX_STAT_IS_STALE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_vxpocket* to_vxpocket (struct vx_core*) ;
 int vx_compute_mic_level (int) ;
 int vx_outb (struct vx_core*,int ,int) ;

void vx_set_mic_level(struct vx_core *chip, int level)
{
 struct snd_vxpocket *pchip = to_vxpocket(chip);

 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 mutex_lock(&chip->lock);
 if (pchip->regCDSP & VXP_CDSP_MIC_SEL_MASK) {
  level = vx_compute_mic_level(level);
  vx_outb(chip, MICRO, level);
 }
 mutex_unlock(&chip->lock);
}
