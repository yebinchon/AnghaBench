
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vxpocket {int regCDSP; } ;


 int CDSP ;
 int INTERNAL_QUARTZ ;
 int VXP_CDSP_CLOCKIN_SEL_MASK ;
 struct snd_vxpocket* to_vxpocket (struct vx_core*) ;
 int vx_outb (struct snd_vxpocket*,int ,int ) ;

__attribute__((used)) static void vxp_set_clock_source(struct vx_core *_chip, int source)
{
 struct snd_vxpocket *chip = to_vxpocket(_chip);

 if (source == INTERNAL_QUARTZ)
  chip->regCDSP &= ~VXP_CDSP_CLOCKIN_SEL_MASK;
 else
  chip->regCDSP |= VXP_CDSP_CLOCKIN_SEL_MASK;
 vx_outb(chip, CDSP, chip->regCDSP);
}
