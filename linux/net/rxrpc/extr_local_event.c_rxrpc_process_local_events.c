
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rxrpc_wire_header {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_local {int debug_id; int event_queue; } ;



 int _debug (char*,int ,int) ;
 int _enter (char*) ;
 int _leave (char*) ;
 int _proto (char*,char) ;
 int rxrpc_free_skb (struct sk_buff*,int ) ;
 int rxrpc_see_skb (struct sk_buff*,int ) ;
 int rxrpc_send_version_request (struct rxrpc_local*,TYPE_1__*,struct sk_buff*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int rxrpc_skb_freed ;
 int rxrpc_skb_seen ;
 int skb_copy_bits (struct sk_buff*,int,char*,int) ;
 struct sk_buff* skb_dequeue (int *) ;

void rxrpc_process_local_events(struct rxrpc_local *local)
{
 struct sk_buff *skb;
 char v;

 _enter("");

 skb = skb_dequeue(&local->event_queue);
 if (skb) {
  struct rxrpc_skb_priv *sp = rxrpc_skb(skb);

  rxrpc_see_skb(skb, rxrpc_skb_seen);
  _debug("{%d},{%u}", local->debug_id, sp->hdr.type);

  switch (sp->hdr.type) {
  case 128:
   if (skb_copy_bits(skb, sizeof(struct rxrpc_wire_header),
       &v, 1) < 0)
    return;
   _proto("Rx VERSION { %02x }", v);
   if (v == 0)
    rxrpc_send_version_request(local, &sp->hdr, skb);
   break;

  default:

   break;
  }

  rxrpc_free_skb(skb, rxrpc_skb_freed);
 }

 _leave("");
}
