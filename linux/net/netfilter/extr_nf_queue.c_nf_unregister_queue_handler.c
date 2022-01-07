
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue_handler; } ;
struct net {TYPE_1__ nf; } ;


 int RCU_INIT_POINTER (int ,int *) ;

void nf_unregister_queue_handler(struct net *net)
{
 RCU_INIT_POINTER(net->nf.queue_handler, ((void*)0));
}
