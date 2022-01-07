
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int srcimap; } ;
struct TYPE_6__ {TYPE_2__ bf; } ;
struct TYPE_4__ {int srcaim; } ;
struct srcimp_mgr_ctrl_blk {TYPE_3__ dirty; TYPE_1__ srcimap; } ;


 int SRCAIM_NXT ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int srcimp_mgr_set_imapnxt(void *blk, unsigned int next)
{
 struct srcimp_mgr_ctrl_blk *ctl = blk;

 set_field(&ctl->srcimap.srcaim, SRCAIM_NXT, next);
 ctl->dirty.bf.srcimap = 1;
 return 0;
}
