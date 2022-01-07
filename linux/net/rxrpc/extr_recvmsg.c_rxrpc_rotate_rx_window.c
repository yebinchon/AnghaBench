
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ serial; } ;
struct rxrpc_skb_priv {int nr_subpackets; int rx_flags; TYPE_1__ hdr; } ;
struct rxrpc_call {int rx_hard_ack; int* rxtx_annotations; scalar_t__ ackr_reason; scalar_t__ ackr_consumed; scalar_t__ ackr_seen; struct sk_buff** rxtx_buffer; int rx_top; int debug_id; } ;
typedef scalar_t__ rxrpc_serial_t ;
typedef int rxrpc_seq_t ;


 int ASSERT (int ) ;
 scalar_t__ RXRPC_ACK_DELAY ;
 int RXRPC_RXTX_BUFF_MASK ;
 int RXRPC_RX_ANNO_SUBPACKET ;
 int RXRPC_SKB_INCL_LAST ;
 int _enter (char*,int ) ;
 scalar_t__ after (int,scalar_t__) ;
 scalar_t__ after_eq (int,scalar_t__) ;
 int before (int,int) ;
 int rxrpc_end_rx_phase (struct rxrpc_call*,scalar_t__) ;
 int rxrpc_free_skb (struct sk_buff*,int ) ;
 int rxrpc_propose_ACK (struct rxrpc_call*,scalar_t__,scalar_t__,int,int,int ) ;
 int rxrpc_propose_ack_rotate_rx ;
 int rxrpc_receive_rotate ;
 int rxrpc_see_skb (struct sk_buff*,int ) ;
 int rxrpc_send_ack_packet (struct rxrpc_call*,int,int *) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int rxrpc_skb_freed ;
 int rxrpc_skb_rotated ;
 int smp_load_acquire (int *) ;
 int smp_store_release (int*,int) ;
 int trace_rxrpc_receive (struct rxrpc_call*,int ,scalar_t__,int) ;

__attribute__((used)) static void rxrpc_rotate_rx_window(struct rxrpc_call *call)
{
 struct rxrpc_skb_priv *sp;
 struct sk_buff *skb;
 rxrpc_serial_t serial;
 rxrpc_seq_t hard_ack, top;
 bool last = 0;
 u8 subpacket;
 int ix;

 _enter("%d", call->debug_id);

 hard_ack = call->rx_hard_ack;
 top = smp_load_acquire(&call->rx_top);
 ASSERT(before(hard_ack, top));

 hard_ack++;
 ix = hard_ack & RXRPC_RXTX_BUFF_MASK;
 skb = call->rxtx_buffer[ix];
 rxrpc_see_skb(skb, rxrpc_skb_rotated);
 sp = rxrpc_skb(skb);

 subpacket = call->rxtx_annotations[ix] & RXRPC_RX_ANNO_SUBPACKET;
 serial = sp->hdr.serial + subpacket;

 if (subpacket == sp->nr_subpackets - 1 &&
     sp->rx_flags & RXRPC_SKB_INCL_LAST)
  last = 1;

 call->rxtx_buffer[ix] = ((void*)0);
 call->rxtx_annotations[ix] = 0;

 smp_store_release(&call->rx_hard_ack, hard_ack);

 rxrpc_free_skb(skb, rxrpc_skb_freed);

 trace_rxrpc_receive(call, rxrpc_receive_rotate, serial, hard_ack);
 if (last) {
  rxrpc_end_rx_phase(call, serial);
 } else {

  if (after_eq(hard_ack, call->ackr_consumed + 2) ||
      after_eq(top, call->ackr_seen + 2) ||
      (hard_ack == top && after(hard_ack, call->ackr_consumed)))
   rxrpc_propose_ACK(call, RXRPC_ACK_DELAY, serial,
       1, 1,
       rxrpc_propose_ack_rotate_rx);
  if (call->ackr_reason && call->ackr_reason != RXRPC_ACK_DELAY)
   rxrpc_send_ack_packet(call, 0, ((void*)0));
 }
}
