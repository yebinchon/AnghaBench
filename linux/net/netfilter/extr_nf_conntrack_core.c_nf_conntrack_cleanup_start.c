
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exiting; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 TYPE_1__ conntrack_gc_work ;
 int ip_ct_attach ;

void nf_conntrack_cleanup_start(void)
{
 conntrack_gc_work.exiting = 1;
 RCU_INIT_POINTER(ip_ct_attach, ((void*)0));
}
