
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rxrpc_local {int reject_queue; int usage; } ;


 int CHECK_SLAB_OKAY (int *) ;
 int rxrpc_free_skb (struct sk_buff*,int ) ;
 scalar_t__ rxrpc_get_local_maybe (struct rxrpc_local*) ;
 int rxrpc_queue_local (struct rxrpc_local*) ;
 int rxrpc_skb_freed ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void rxrpc_reject_packet(struct rxrpc_local *local, struct sk_buff *skb)
{
 CHECK_SLAB_OKAY(&local->usage);

 if (rxrpc_get_local_maybe(local)) {
  skb_queue_tail(&local->reject_queue, skb);
  rxrpc_queue_local(local);
 } else {
  rxrpc_free_skb(skb, rxrpc_skb_freed);
 }
}
