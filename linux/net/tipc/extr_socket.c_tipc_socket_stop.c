
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int family; } ;


 int proto_unregister (int *) ;
 int sock_unregister (int ) ;
 TYPE_1__ tipc_family_ops ;
 int tipc_proto ;

void tipc_socket_stop(void)
{
 sock_unregister(tipc_family_ops.family);
 proto_unregister(&tipc_proto);
}
