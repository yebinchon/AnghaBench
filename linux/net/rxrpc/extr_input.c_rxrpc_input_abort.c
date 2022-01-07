
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wtmp ;
typedef int u32 ;
struct sk_buff {int len; } ;
struct rxrpc_wire_header {int dummy; } ;
struct TYPE_2__ {int serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int dummy; } ;
typedef int __be32 ;


 int ECONNABORTED ;
 int RXRPC_CALL_REMOTELY_ABORTED ;
 int RX_CALL_DEAD ;
 int _enter (char*) ;
 int _proto (char*,int ,int ) ;
 int ntohl (int ) ;
 int rxrpc_notify_socket (struct rxrpc_call*) ;
 scalar_t__ rxrpc_set_call_completion (struct rxrpc_call*,int ,int ,int ) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,int *,int) ;
 int trace_rxrpc_rx_abort (struct rxrpc_call*,int ,int ) ;

__attribute__((used)) static void rxrpc_input_abort(struct rxrpc_call *call, struct sk_buff *skb)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 __be32 wtmp;
 u32 abort_code = RX_CALL_DEAD;

 _enter("");

 if (skb->len >= 4 &&
     skb_copy_bits(skb, sizeof(struct rxrpc_wire_header),
     &wtmp, sizeof(wtmp)) >= 0)
  abort_code = ntohl(wtmp);

 trace_rxrpc_rx_abort(call, sp->hdr.serial, abort_code);

 _proto("Rx ABORT %%%u { %x }", sp->hdr.serial, abort_code);

 if (rxrpc_set_call_completion(call, RXRPC_CALL_REMOTELY_ABORTED,
          abort_code, -ECONNABORTED))
  rxrpc_notify_socket(call);
}
