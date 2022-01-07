
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int type; int serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int expect_rx_by; int next_rx_timo; } ;


 unsigned long READ_ONCE (int ) ;





 int WRITE_ONCE (int ,unsigned long) ;
 int _enter (char*,struct rxrpc_call*,struct sk_buff*) ;
 int _leave (char*) ;
 int _proto (char*,int ) ;
 unsigned long jiffies ;
 int rxrpc_free_skb (struct sk_buff*,int ) ;
 int rxrpc_input_abort (struct rxrpc_call*,struct sk_buff*) ;
 int rxrpc_input_ack (struct rxrpc_call*,struct sk_buff*) ;
 int rxrpc_input_ackall (struct rxrpc_call*,struct sk_buff*) ;
 int rxrpc_input_data (struct rxrpc_call*,struct sk_buff*) ;
 int rxrpc_reduce_call_timer (struct rxrpc_call*,unsigned long,unsigned long,int ) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int rxrpc_skb_freed ;
 int rxrpc_timer_set_for_normal ;

__attribute__((used)) static void rxrpc_input_call_packet(struct rxrpc_call *call,
        struct sk_buff *skb)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 unsigned long timo;

 _enter("%p,%p", call, skb);

 timo = READ_ONCE(call->next_rx_timo);
 if (timo) {
  unsigned long now = jiffies, expect_rx_by;

  expect_rx_by = now + timo;
  WRITE_ONCE(call->expect_rx_by, expect_rx_by);
  rxrpc_reduce_call_timer(call, expect_rx_by, now,
     rxrpc_timer_set_for_normal);
 }

 switch (sp->hdr.type) {
 case 128:
  rxrpc_input_data(call, skb);
  goto no_free;

 case 131:
  rxrpc_input_ack(call, skb);
  break;

 case 129:
  _proto("Rx BUSY %%%u", sp->hdr.serial);





  break;

 case 132:
  rxrpc_input_abort(call, skb);
  break;

 case 130:
  rxrpc_input_ackall(call, skb);
  break;

 default:
  break;
 }

 rxrpc_free_skb(skb, rxrpc_skb_freed);
no_free:
 _leave("");
}
