
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ca; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct src_rsc_ctrl_blk {TYPE_2__ dirty; int ca; } ;


 int SRCCA_CA ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int src_set_ca(void *blk, unsigned int ca)
{
 struct src_rsc_ctrl_blk *ctl = blk;

 set_field(&ctl->ca, SRCCA_CA, ca);
 ctl->dirty.bf.ca = 1;
 return 0;
}
