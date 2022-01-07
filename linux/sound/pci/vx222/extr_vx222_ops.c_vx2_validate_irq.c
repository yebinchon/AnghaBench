
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vx222 {int regCDSP; } ;


 int CDSP ;
 int INTCSR ;
 int VX_CDSP_VALID_IRQ_MASK ;
 int VX_INTCSR_VALUE ;
 int VX_PCI_INTERRUPT_MASK ;
 struct snd_vx222* to_vx222 (struct vx_core*) ;
 int vx_outl (struct snd_vx222*,int ,int) ;

__attribute__((used)) static void vx2_validate_irq(struct vx_core *_chip, int enable)
{
 struct snd_vx222 *chip = to_vx222(_chip);


 if (enable) {

  vx_outl(chip, INTCSR, VX_INTCSR_VALUE|VX_PCI_INTERRUPT_MASK);
  chip->regCDSP |= VX_CDSP_VALID_IRQ_MASK;
 } else {

  vx_outl(chip, INTCSR, VX_INTCSR_VALUE&~VX_PCI_INTERRUPT_MASK);
  chip->regCDSP &= ~VX_CDSP_VALID_IRQ_MASK;
 }
 vx_outl(chip, CDSP, chip->regCDSP);
}
