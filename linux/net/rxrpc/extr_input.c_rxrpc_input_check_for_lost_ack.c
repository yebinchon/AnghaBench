
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rxrpc_call {int tx_hard_ack; int acks_lost_top; scalar_t__* rxtx_annotations; int events; int lock; } ;
typedef int rxrpc_seq_t ;


 int RXRPC_CALL_EV_RESEND ;
 int RXRPC_RXTX_BUFF_MASK ;
 scalar_t__ RXRPC_TX_ANNO_MASK ;
 scalar_t__ RXRPC_TX_ANNO_RETRANS ;
 scalar_t__ RXRPC_TX_ANNO_UNACK ;
 scalar_t__ before (int,int) ;
 scalar_t__ before_eq (int,int) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void rxrpc_input_check_for_lost_ack(struct rxrpc_call *call)
{
 rxrpc_seq_t top, bottom, seq;
 bool resend = 0;

 spin_lock_bh(&call->lock);

 bottom = call->tx_hard_ack + 1;
 top = call->acks_lost_top;
 if (before(bottom, top)) {
  for (seq = bottom; before_eq(seq, top); seq++) {
   int ix = seq & RXRPC_RXTX_BUFF_MASK;
   u8 annotation = call->rxtx_annotations[ix];
   u8 anno_type = annotation & RXRPC_TX_ANNO_MASK;

   if (anno_type != RXRPC_TX_ANNO_UNACK)
    continue;
   annotation &= ~RXRPC_TX_ANNO_MASK;
   annotation |= RXRPC_TX_ANNO_RETRANS;
   call->rxtx_annotations[ix] = annotation;
   resend = 1;
  }
 }

 spin_unlock_bh(&call->lock);

 if (resend && !test_and_set_bit(RXRPC_CALL_EV_RESEND, &call->events))
  rxrpc_queue_call(call);
}
