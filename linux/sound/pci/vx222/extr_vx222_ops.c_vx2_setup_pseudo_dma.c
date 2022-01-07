
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int ICR ;
 int ICR_RREQ ;
 int ICR_TREQ ;
 int RESET_DMA ;
 int vx_outl (struct vx_core*,int ,int ) ;

__attribute__((used)) static void vx2_setup_pseudo_dma(struct vx_core *chip, int do_write)
{



 vx_outl(chip, ICR, do_write ? ICR_TREQ : ICR_RREQ);




 vx_outl(chip, RESET_DMA, 0);
}
