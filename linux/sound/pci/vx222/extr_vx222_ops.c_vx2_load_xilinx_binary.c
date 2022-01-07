
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vx_core {scalar_t__ type; TYPE_1__* card; } ;
struct firmware {unsigned char* data; unsigned int size; } ;
struct TYPE_2__ {int dev; } ;


 int CNTRL ;
 int EINVAL ;
 int GPIOC ;
 unsigned int VX_CNTRL ;
 int VX_CNTRL_REGISTER_VALUE ;
 unsigned int VX_GPIOC ;
 scalar_t__ VX_TYPE_BOARD ;
 int VX_XILINX_RESET_MASK ;
 int cond_resched () ;
 int dev_err (int ,char*,unsigned int) ;
 int msleep (int) ;
 scalar_t__ put_xilinx_data (struct vx_core*,unsigned int,int,unsigned char const) ;
 unsigned int vx_inl (struct vx_core*,int ) ;
 int vx_outl (struct vx_core*,int ,int) ;

__attribute__((used)) static int vx2_load_xilinx_binary(struct vx_core *chip, const struct firmware *xilinx)
{
 unsigned int i;
 unsigned int port;
 const unsigned char *image;


 vx_outl(chip, CNTRL, VX_CNTRL_REGISTER_VALUE | VX_XILINX_RESET_MASK);
 vx_inl(chip, CNTRL);
 msleep(10);
 vx_outl(chip, CNTRL, VX_CNTRL_REGISTER_VALUE);
 vx_inl(chip, CNTRL);
 msleep(10);

 if (chip->type == VX_TYPE_BOARD)
  port = VX_CNTRL;
 else
  port = VX_GPIOC;

 image = xilinx->data;
 for (i = 0; i < xilinx->size; i++, image++) {
  if (put_xilinx_data(chip, port, 8, *image) < 0)
   return -EINVAL;

  cond_resched();
 }
 put_xilinx_data(chip, port, 4, 0xff);

 msleep(200);


 if (chip->type != VX_TYPE_BOARD) {

  i = vx_inl(chip, GPIOC);
  if (i & 0x0100)
   return 0;
  dev_err(chip->card->dev,
   "xilinx test failed after load, GPIOC=0x%x\n", i);
  return -EINVAL;
 }

 return 0;
}
