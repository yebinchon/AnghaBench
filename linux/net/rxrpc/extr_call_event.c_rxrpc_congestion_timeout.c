
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int flags; } ;


 int RXRPC_CALL_RETRANS_TIMEOUT ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void rxrpc_congestion_timeout(struct rxrpc_call *call)
{
 set_bit(RXRPC_CALL_RETRANS_TIMEOUT, &call->flags);
}
