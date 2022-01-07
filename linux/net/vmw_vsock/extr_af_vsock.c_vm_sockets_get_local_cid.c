
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_local_cid ) () ;} ;


 int stub1 () ;
 TYPE_1__* transport ;

int vm_sockets_get_local_cid(void)
{
 return transport->get_local_cid();
}
