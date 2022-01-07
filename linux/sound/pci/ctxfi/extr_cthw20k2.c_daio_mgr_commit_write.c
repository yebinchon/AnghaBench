
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hw {int dummy; } ;
struct TYPE_5__ {int atxctl; int arxctl; scalar_t__ daoimap; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {int idx; unsigned int aim; } ;
struct daio_mgr_ctrl_blk {unsigned int* txctl; unsigned int* rxctl; TYPE_3__ dirty; TYPE_1__ daoimap; } ;


 scalar_t__ AUDIO_IO_AIM ;
 scalar_t__ AUDIO_IO_RX_CTL ;
 scalar_t__ AUDIO_IO_TX_CTL ;
 int hw_write_20kx (struct hw*,scalar_t__,unsigned int) ;
 int mdelay (int) ;

__attribute__((used)) static int daio_mgr_commit_write(struct hw *hw, void *blk)
{
 struct daio_mgr_ctrl_blk *ctl = blk;
 unsigned int data;
 int i;

 for (i = 0; i < 8; i++) {
  if ((ctl->dirty.bf.atxctl & (0x1 << i))) {
   data = ctl->txctl[i];
   hw_write_20kx(hw, (AUDIO_IO_TX_CTL+(0x40*i)), data);
   ctl->dirty.bf.atxctl &= ~(0x1 << i);
   mdelay(1);
  }
  if ((ctl->dirty.bf.arxctl & (0x1 << i))) {
   data = ctl->rxctl[i];
   hw_write_20kx(hw, (AUDIO_IO_RX_CTL+(0x40*i)), data);
   ctl->dirty.bf.arxctl &= ~(0x1 << i);
   mdelay(1);
  }
 }
 if (ctl->dirty.bf.daoimap) {
  hw_write_20kx(hw, AUDIO_IO_AIM+ctl->daoimap.idx*4,
      ctl->daoimap.aim);
  ctl->dirty.bf.daoimap = 0;
 }

 return 0;
}
