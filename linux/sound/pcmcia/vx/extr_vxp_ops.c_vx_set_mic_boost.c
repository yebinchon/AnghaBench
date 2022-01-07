
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; int lock; } ;
struct snd_vxpocket {int regCDSP; } ;


 int CDSP ;
 int P24_CDSP_MIC20_SEL_MASK ;
 int P24_CDSP_MIC38_SEL_MASK ;
 int P24_CDSP_MICS_SEL_MASK ;
 int VX_STAT_IS_STALE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_vxpocket* to_vxpocket (struct vx_core*) ;
 int vx_outb (struct vx_core*,int ,int) ;

void vx_set_mic_boost(struct vx_core *chip, int boost)
{
 struct snd_vxpocket *pchip = to_vxpocket(chip);

 if (chip->chip_status & VX_STAT_IS_STALE)
  return;

 mutex_lock(&chip->lock);
 if (pchip->regCDSP & P24_CDSP_MICS_SEL_MASK) {
  if (boost) {

   pchip->regCDSP &= ~P24_CDSP_MIC20_SEL_MASK;
   pchip->regCDSP |= P24_CDSP_MIC38_SEL_MASK;
  } else {

   pchip->regCDSP |= P24_CDSP_MIC20_SEL_MASK;
   pchip->regCDSP &= ~P24_CDSP_MIC38_SEL_MASK;
                }
  vx_outb(chip, CDSP, pchip->regCDSP);
 }
 mutex_unlock(&chip->lock);
}
