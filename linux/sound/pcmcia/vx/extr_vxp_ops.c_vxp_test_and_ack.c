
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; } ;
struct snd_vxpocket {int regDIALOG; } ;


 int DIALOG ;
 int EIO ;
 int ENXIO ;
 int VXP_DLG_ACK_MEMIRQ_MASK ;
 int VXP_DLG_MEMIRQ_MASK ;
 int VX_STAT_XILINX_LOADED ;
 struct snd_vxpocket* to_vxpocket (struct vx_core*) ;
 int vx_inb (struct snd_vxpocket*,int ) ;
 int vx_outb (struct snd_vxpocket*,int ,int) ;

__attribute__((used)) static int vxp_test_and_ack(struct vx_core *_chip)
{
 struct snd_vxpocket *chip = to_vxpocket(_chip);


 if (! (_chip->chip_status & VX_STAT_XILINX_LOADED))
  return -ENXIO;

 if (! (vx_inb(chip, DIALOG) & VXP_DLG_MEMIRQ_MASK))
  return -EIO;



 vx_outb(chip, DIALOG, chip->regDIALOG | VXP_DLG_ACK_MEMIRQ_MASK);



 vx_inb(chip, DIALOG);
 vx_outb(chip, DIALOG, chip->regDIALOG & ~VXP_DLG_ACK_MEMIRQ_MASK);

 return 0;
}
