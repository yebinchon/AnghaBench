
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {int sk; } ;
struct rxrpc_call {int user_call_ID; } ;
typedef int (* rxrpc_notify_end_tx_t ) (int *,struct rxrpc_call*,int ) ;



__attribute__((used)) static void rxrpc_notify_end_tx(struct rxrpc_sock *rx, struct rxrpc_call *call,
    rxrpc_notify_end_tx_t notify_end_tx)
{
 if (notify_end_tx)
  notify_end_tx(&rx->sk, call, call->user_call_ID);
}
