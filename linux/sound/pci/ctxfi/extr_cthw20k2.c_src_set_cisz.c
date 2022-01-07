
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ccr; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct src_rsc_ctrl_blk {TYPE_2__ dirty; int ccr; } ;


 int SRCCCR_CISZ ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int src_set_cisz(void *blk, unsigned int cisz)
{
 struct src_rsc_ctrl_blk *ctl = blk;

 set_field(&ctl->ccr, SRCCCR_CISZ, cisz);
 ctl->dirty.bf.ccr = 1;
 return 0;
}
