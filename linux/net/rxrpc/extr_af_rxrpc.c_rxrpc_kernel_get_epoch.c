
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct socket {int dummy; } ;
struct rxrpc_call {TYPE_2__* conn; } ;
struct TYPE_3__ {int epoch; } ;
struct TYPE_4__ {TYPE_1__ proto; } ;



u32 rxrpc_kernel_get_epoch(struct socket *sock, struct rxrpc_call *call)
{
 return call->conn->proto.epoch;
}
