
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vx222 {int regCDSP; } ;


 int CDSP ;
 int VX_CDSP_DSP_RESET_MASK ;
 int XX_DSP_RESET_WAIT_TIME ;
 int mdelay (int ) ;
 struct snd_vx222* to_vx222 (struct vx_core*) ;
 int vx_outl (struct snd_vx222*,int ,int) ;

__attribute__((used)) static void vx2_reset_dsp(struct vx_core *_chip)
{
 struct snd_vx222 *chip = to_vx222(_chip);


 vx_outl(chip, CDSP, chip->regCDSP & ~VX_CDSP_DSP_RESET_MASK);

 mdelay(XX_DSP_RESET_WAIT_TIME);

 chip->regCDSP |= VX_CDSP_DSP_RESET_MASK;

 vx_outl(chip, CDSP, chip->regCDSP);
}
