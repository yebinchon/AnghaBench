
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 unsigned char inb (int ) ;
 int vx2_reg_addr (struct vx_core*,int) ;

__attribute__((used)) static unsigned char vx2_inb(struct vx_core *chip, int offset)
{
 return inb(vx2_reg_addr(chip, offset));
}
