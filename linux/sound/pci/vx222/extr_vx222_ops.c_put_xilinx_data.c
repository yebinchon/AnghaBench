
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 unsigned int VX_CNTRL_REGISTER_VALUE ;
 unsigned int VX_USERBIT0_MASK ;
 unsigned int VX_USERBIT1_MASK ;
 int udelay (int) ;
 int vx2_inl (struct vx_core*,unsigned int) ;
 int vx2_outl (struct vx_core*,unsigned int,unsigned int) ;

__attribute__((used)) static int put_xilinx_data(struct vx_core *chip, unsigned int port, unsigned int counts, unsigned char data)
{
 unsigned int i;

 for (i = 0; i < counts; i++) {
  unsigned int val;


  val = VX_CNTRL_REGISTER_VALUE & ~VX_USERBIT0_MASK;
  vx2_outl(chip, port, val);
  vx2_inl(chip, port);
  udelay(1);

  if (data & (1 << i))
   val |= VX_USERBIT1_MASK;
  else
   val &= ~VX_USERBIT1_MASK;
  vx2_outl(chip, port, val);
  vx2_inl(chip, port);


  val |= VX_USERBIT0_MASK;
  vx2_outl(chip, port, val);
  vx2_inl(chip, port);
  udelay(1);
 }
 return 0;
}
