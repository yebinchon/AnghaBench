
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int CODEC2 ;
 int DATA ;
 int HIFREQ ;
 int LOFREQ ;
 int VX_DATA_CODEC_MASK ;
 int vx_inb (struct vx_core*,int ) ;
 int vx_outb (struct vx_core*,int ,int ) ;

__attribute__((used)) static void vxp_write_codec_reg(struct vx_core *chip, int codec, unsigned int data)
{
 int i;


 if (! codec)
  vx_inb(chip, LOFREQ);
 else
  vx_inb(chip, CODEC2);


 for (i = 0; i < 24; i++, data <<= 1)
  vx_outb(chip, DATA, ((data & 0x800000) ? VX_DATA_CODEC_MASK : 0));


 vx_inb(chip, HIFREQ);
}
