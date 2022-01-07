
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int tstamp; } ;
struct TYPE_2__ {scalar_t__ serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {struct sk_buff** rxtx_buffer; } ;
typedef scalar_t__ rxrpc_serial_t ;
typedef int ktime_t ;


 int RXRPC_RXTX_BUFF_SIZE ;
 int rxrpc_peer_add_rtt (struct rxrpc_call*,int ,scalar_t__,scalar_t__,int ,int ) ;
 int rxrpc_rtt_rx_requested_ack ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int smp_rmb () ;

__attribute__((used)) static void rxrpc_input_requested_ack(struct rxrpc_call *call,
          ktime_t resp_time,
          rxrpc_serial_t orig_serial,
          rxrpc_serial_t ack_serial)
{
 struct rxrpc_skb_priv *sp;
 struct sk_buff *skb;
 ktime_t sent_at;
 int ix;

 for (ix = 0; ix < RXRPC_RXTX_BUFF_SIZE; ix++) {
  skb = call->rxtx_buffer[ix];
  if (!skb)
   continue;

  sent_at = skb->tstamp;
  smp_rmb();
  sp = rxrpc_skb(skb);
  if (sp->hdr.serial != orig_serial)
   continue;
  goto found;
 }

 return;

found:
 rxrpc_peer_add_rtt(call, rxrpc_rtt_rx_requested_ack,
      orig_serial, ack_serial, sent_at, resp_time);
}
