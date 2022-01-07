
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;
struct snd_vxpocket {int regDIALOG; } ;


 int DIALOG ;
 int ICR ;
 int ICR_RREQ ;
 int ICR_TREQ ;
 int ISR ;
 int VXP_DLG_DMA16_SEL_MASK ;
 int VXP_DLG_DMAREAD_SEL_MASK ;
 int VXP_DLG_DMAWRITE_SEL_MASK ;
 struct snd_vxpocket* to_vxpocket (struct vx_core*) ;
 int vx_inb (struct snd_vxpocket*,int ) ;
 int vx_outb (struct snd_vxpocket*,int ,int ) ;

__attribute__((used)) static void vx_setup_pseudo_dma(struct vx_core *_chip, int do_write)
{
 struct snd_vxpocket *chip = to_vxpocket(_chip);


 vx_outb(chip, ICR, do_write ? ICR_TREQ : ICR_RREQ);

 vx_inb(chip, ISR);
 vx_outb(chip, ISR, 0);


 chip->regDIALOG |= VXP_DLG_DMA16_SEL_MASK;
 chip->regDIALOG |= do_write ? VXP_DLG_DMAWRITE_SEL_MASK : VXP_DLG_DMAREAD_SEL_MASK;
 vx_outb(chip, DIALOG, chip->regDIALOG);

}
