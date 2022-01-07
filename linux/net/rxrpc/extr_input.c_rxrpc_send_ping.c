
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int tstamp; } ;
struct TYPE_4__ {int serial; } ;
struct rxrpc_skb_priv {TYPE_2__ hdr; } ;
struct rxrpc_call {TYPE_1__* peer; } ;
typedef int ktime_t ;
struct TYPE_3__ {int rtt_usage; int rtt_last_req; } ;


 int RXRPC_ACK_PING ;
 int ktime_add_ms (int ,int) ;
 scalar_t__ ktime_before (int ,int ) ;
 int rxrpc_propose_ACK (struct rxrpc_call*,int ,int ,int,int,int ) ;
 int rxrpc_propose_ack_ping_for_params ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;

__attribute__((used)) static void rxrpc_send_ping(struct rxrpc_call *call, struct sk_buff *skb)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 ktime_t now = skb->tstamp;

 if (call->peer->rtt_usage < 3 ||
     ktime_before(ktime_add_ms(call->peer->rtt_last_req, 1000), now))
  rxrpc_propose_ACK(call, RXRPC_ACK_PING, sp->hdr.serial,
      1, 1,
      rxrpc_propose_ack_ping_for_params);
}
