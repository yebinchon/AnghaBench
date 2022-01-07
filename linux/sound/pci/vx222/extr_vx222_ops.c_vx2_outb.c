
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int outb (unsigned char,int ) ;
 int vx2_reg_addr (struct vx_core*,int) ;

__attribute__((used)) static void vx2_outb(struct vx_core *chip, int offset, unsigned char val)
{
 outb(val, vx2_reg_addr(chip, offset));



}
