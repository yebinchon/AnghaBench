
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_hal2 {struct hal2_ctl_regs* ctl_regs; } ;
struct hal2_ctl_regs {int iar; int idr3; int idr2; int idr1; int idr0; } ;


 int H2_INDIRECT_WAIT (struct hal2_ctl_regs*) ;
 int H2_WRITE_ADDR (int ) ;
 int hal2_write (int ,int *) ;

__attribute__((used)) static void hal2_i_write16(struct snd_hal2 *hal2, u16 addr, u16 val)
{
 struct hal2_ctl_regs *regs = hal2->ctl_regs;

 hal2_write(val, &regs->idr0);
 hal2_write(0, &regs->idr1);
 hal2_write(0, &regs->idr2);
 hal2_write(0, &regs->idr3);
 hal2_write(H2_WRITE_ADDR(addr), &regs->iar);
 H2_INDIRECT_WAIT(regs);
}
