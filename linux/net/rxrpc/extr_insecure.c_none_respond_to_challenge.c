
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_connection {int dummy; } ;


 int EPROTO ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int trace_rxrpc_rx_eproto (int *,int ,int ) ;
 int tracepoint_string (char*) ;

__attribute__((used)) static int none_respond_to_challenge(struct rxrpc_connection *conn,
         struct sk_buff *skb,
         u32 *_abort_code)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);

 trace_rxrpc_rx_eproto(((void*)0), sp->hdr.serial,
         tracepoint_string("chall_none"));
 return -EPROTO;
}
