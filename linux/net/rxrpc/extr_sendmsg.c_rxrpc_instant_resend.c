
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {scalar_t__ state; int* rxtx_annotations; int lock; int events; } ;


 scalar_t__ RXRPC_CALL_COMPLETE ;
 int RXRPC_CALL_EV_RESEND ;
 int RXRPC_TX_ANNO_LAST ;
 int RXRPC_TX_ANNO_RETRANS ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline void rxrpc_instant_resend(struct rxrpc_call *call, int ix)
{
 spin_lock_bh(&call->lock);

 if (call->state < RXRPC_CALL_COMPLETE) {
  call->rxtx_annotations[ix] =
   (call->rxtx_annotations[ix] & RXRPC_TX_ANNO_LAST) |
   RXRPC_TX_ANNO_RETRANS;
  if (!test_and_set_bit(RXRPC_CALL_EV_RESEND, &call->events))
   rxrpc_queue_call(call);
 }

 spin_unlock_bh(&call->lock);
}
