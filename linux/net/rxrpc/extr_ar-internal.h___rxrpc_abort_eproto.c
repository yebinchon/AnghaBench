
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int seq; int serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int dummy; } ;


 int EPROTO ;
 int rxrpc_abort_call (char const*,struct rxrpc_call*,int ,int ,int ) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int trace_rxrpc_rx_eproto (struct rxrpc_call*,int ,char const*) ;

__attribute__((used)) static inline bool __rxrpc_abort_eproto(struct rxrpc_call *call,
     struct sk_buff *skb,
     const char *eproto_why,
     const char *why,
     u32 abort_code)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);

 trace_rxrpc_rx_eproto(call, sp->hdr.serial, eproto_why);
 return rxrpc_abort_call(why, call, sp->hdr.seq, abort_code, -EPROTO);
}
