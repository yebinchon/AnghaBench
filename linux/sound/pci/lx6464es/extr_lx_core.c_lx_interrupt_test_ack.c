
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lx6464es {int dummy; } ;


 int IRQCS_ACTIVE_PCIDB ;
 int PCX_IRQ_NONE ;
 int ePLX_IRQCS ;
 int ePLX_L2PCIDB ;
 int lx_plx_reg_read (struct lx6464es*,int ) ;
 int lx_plx_reg_write (struct lx6464es*,int ,int) ;

__attribute__((used)) static u32 lx_interrupt_test_ack(struct lx6464es *chip)
{
 u32 irqcs = lx_plx_reg_read(chip, ePLX_IRQCS);


 if (irqcs & IRQCS_ACTIVE_PCIDB) {
  u32 temp;
  irqcs = PCX_IRQ_NONE;

  while ((temp = lx_plx_reg_read(chip, ePLX_L2PCIDB))) {

   irqcs |= temp;
   lx_plx_reg_write(chip, ePLX_L2PCIDB, temp);
  }

  return irqcs;
 }
 return PCX_IRQ_NONE;
}
