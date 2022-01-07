
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rxrpc_call {int lock; } ;
typedef enum rxrpc_propose_ack_trace { ____Placeholder_rxrpc_propose_ack_trace } rxrpc_propose_ack_trace ;


 int __rxrpc_propose_ACK (struct rxrpc_call*,int ,int ,int,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rxrpc_propose_ACK(struct rxrpc_call *call, u8 ack_reason,
         u32 serial, bool immediate, bool background,
         enum rxrpc_propose_ack_trace why)
{
 spin_lock_bh(&call->lock);
 __rxrpc_propose_ACK(call, ack_reason, serial,
       immediate, background, why);
 spin_unlock_bh(&call->lock);
}
