
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int input_lock; int tx_top; } ;
struct rxrpc_ack_summary {int member_0; } ;


 int _proto (char*,int ) ;
 int rxrpc_end_tx_phase (struct rxrpc_call*,int,char*) ;
 scalar_t__ rxrpc_rotate_tx_window (struct rxrpc_call*,int ,struct rxrpc_ack_summary*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rxrpc_input_ackall(struct rxrpc_call *call, struct sk_buff *skb)
{
 struct rxrpc_ack_summary summary = { 0 };
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);

 _proto("Rx ACKALL %%%u", sp->hdr.serial);

 spin_lock(&call->input_lock);

 if (rxrpc_rotate_tx_window(call, call->tx_top, &summary))
  rxrpc_end_tx_phase(call, 0, "ETL");

 spin_unlock(&call->input_lock);
}
