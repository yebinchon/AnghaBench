
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arxctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct daio_mgr_ctrl_blk {TYPE_2__ dirty; int * rxctl; } ;


 int ARXCTL_EN ;
 int set_field (int *,int ,int ) ;

__attribute__((used)) static int daio_mgr_dsb_dai(void *blk, unsigned int idx)
{
 struct daio_mgr_ctrl_blk *ctl = blk;

 set_field(&ctl->rxctl[idx], ARXCTL_EN, 0);

 ctl->dirty.bf.arxctl |= (0x1 << idx);
 return 0;
}
