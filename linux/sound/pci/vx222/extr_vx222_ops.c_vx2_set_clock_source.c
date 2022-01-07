
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vx222 {int regCFG; } ;


 int CFG ;
 int INTERNAL_QUARTZ ;
 int VX_CFG_CLOCKIN_SEL_MASK ;
 struct snd_vx222* to_vx222 (struct vx_core*) ;
 int vx_outl (struct snd_vx222*,int ,int ) ;

__attribute__((used)) static void vx2_set_clock_source(struct vx_core *_chip, int source)
{
 struct snd_vx222 *chip = to_vx222(_chip);

 if (source == INTERNAL_QUARTZ)
  chip->regCFG &= ~VX_CFG_CLOCKIN_SEL_MASK;
 else
  chip->regCFG |= VX_CFG_CLOCKIN_SEL_MASK;
 vx_outl(chip, CFG, chip->regCFG);
}
