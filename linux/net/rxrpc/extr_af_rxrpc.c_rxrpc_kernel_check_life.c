
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socket {int dummy; } ;
struct rxrpc_call {scalar_t__ state; int acks_latest; } ;


 scalar_t__ RXRPC_CALL_COMPLETE ;

bool rxrpc_kernel_check_life(const struct socket *sock,
        const struct rxrpc_call *call,
        u32 *_life)
{
 *_life = call->acks_latest;
 return call->state != RXRPC_CALL_COMPLETE;
}
