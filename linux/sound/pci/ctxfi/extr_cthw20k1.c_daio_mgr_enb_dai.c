
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spictl; int i2sictl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct daio_mgr_ctrl_blk {TYPE_2__ dirty; int i2sctl; int spictl; } ;


 unsigned int I2SCTL_EI ;
 unsigned int SPICTL_EN ;
 int set_field (int *,unsigned int,int) ;

__attribute__((used)) static int daio_mgr_enb_dai(void *blk, unsigned int idx)
{
 struct daio_mgr_ctrl_blk *ctl = blk;

 if (idx < 4) {

  set_field(&ctl->spictl, SPICTL_EN << (idx*8), 1);
  ctl->dirty.bf.spictl |= (0x1 << idx);
 } else {

  idx %= 4;
  set_field(&ctl->i2sctl, I2SCTL_EI << (idx*8), 1);
  ctl->dirty.bf.i2sictl |= (0x1 << idx);
 }
 return 0;
}
