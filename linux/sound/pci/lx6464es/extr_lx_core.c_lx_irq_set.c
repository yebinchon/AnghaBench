
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lx6464es {int dummy; } ;


 int IRQCS_ENABLE_PCIDB ;
 int IRQCS_ENABLE_PCIIRQ ;
 int ePLX_IRQCS ;
 int lx_plx_reg_read (struct lx6464es*,int ) ;
 int lx_plx_reg_write (struct lx6464es*,int ,int) ;

__attribute__((used)) static void lx_irq_set(struct lx6464es *chip, int enable)
{
 u32 reg = lx_plx_reg_read(chip, ePLX_IRQCS);






 if (enable)
  reg |= (IRQCS_ENABLE_PCIIRQ | IRQCS_ENABLE_PCIDB);
 else
  reg &= ~(IRQCS_ENABLE_PCIIRQ | IRQCS_ENABLE_PCIDB);
 lx_plx_reg_write(chip, ePLX_IRQCS, reg);
}
