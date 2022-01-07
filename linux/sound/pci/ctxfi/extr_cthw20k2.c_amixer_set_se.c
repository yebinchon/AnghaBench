
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int amophi; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct amixer_rsc_ctrl_blk {TYPE_2__ dirty; int amophi; } ;


 int AMOPHI_SE ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int amixer_set_se(void *blk, unsigned int se)
{
 struct amixer_rsc_ctrl_blk *ctl = blk;

 set_field(&ctl->amophi, AMOPHI_SE, se);
 ctl->dirty.bf.amophi = 1;
 return 0;
}
