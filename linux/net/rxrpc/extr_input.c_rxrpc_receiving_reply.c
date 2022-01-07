
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int tx_phase; int flags; int ack_at; int resend_at; int lock; scalar_t__ ackr_reason; int tx_top; } ;
struct rxrpc_ack_summary {int member_0; } ;
typedef int rxrpc_seq_t ;


 unsigned long MAX_JIFFY_OFFSET ;
 int READ_ONCE (int ) ;
 int RXRPC_CALL_TX_LAST ;
 int WRITE_ONCE (int ,unsigned long) ;
 unsigned long jiffies ;
 int rxrpc_end_tx_phase (struct rxrpc_call*,int,char*) ;
 int rxrpc_proto_abort (char*,struct rxrpc_call*,int ) ;
 int rxrpc_rotate_tx_window (struct rxrpc_call*,int ,struct rxrpc_ack_summary*) ;
 int rxrpc_timer_init_for_reply ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;
 int trace_rxrpc_timer (struct rxrpc_call*,int ,unsigned long) ;

__attribute__((used)) static bool rxrpc_receiving_reply(struct rxrpc_call *call)
{
 struct rxrpc_ack_summary summary = { 0 };
 unsigned long now, timo;
 rxrpc_seq_t top = READ_ONCE(call->tx_top);

 if (call->ackr_reason) {
  spin_lock_bh(&call->lock);
  call->ackr_reason = 0;
  spin_unlock_bh(&call->lock);
  now = jiffies;
  timo = now + MAX_JIFFY_OFFSET;
  WRITE_ONCE(call->resend_at, timo);
  WRITE_ONCE(call->ack_at, timo);
  trace_rxrpc_timer(call, rxrpc_timer_init_for_reply, now);
 }

 if (!test_bit(RXRPC_CALL_TX_LAST, &call->flags)) {
  if (!rxrpc_rotate_tx_window(call, top, &summary)) {
   rxrpc_proto_abort("TXL", call, top);
   return 0;
  }
 }
 if (!rxrpc_end_tx_phase(call, 1, "ETD"))
  return 0;
 call->tx_phase = 0;
 return 1;
}
