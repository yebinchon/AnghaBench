
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct batadv_priv {int batman_queue_left; int bcast_queue_left; } ;
struct batadv_hard_iface {int refcount; } ;
struct batadv_forw_packet {scalar_t__ num_packets; struct batadv_hard_iface* if_outgoing; struct batadv_hard_iface* if_incoming; int * queue_left; struct sk_buff* skb; int cleanup_list; int list; } ;
typedef int atomic_t ;


 int BATADV_DBG_BATMAN ;
 int GFP_ATOMIC ;
 int INIT_HLIST_NODE (int *) ;
 int atomic_inc (int *) ;
 int batadv_atomic_dec_not_zero (int *) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,char const*) ;
 struct batadv_forw_packet* kmalloc (int,int ) ;
 int kref_get (int *) ;

struct batadv_forw_packet *
batadv_forw_packet_alloc(struct batadv_hard_iface *if_incoming,
    struct batadv_hard_iface *if_outgoing,
    atomic_t *queue_left,
    struct batadv_priv *bat_priv,
    struct sk_buff *skb)
{
 struct batadv_forw_packet *forw_packet;
 const char *qname;

 if (queue_left && !batadv_atomic_dec_not_zero(queue_left)) {
  qname = "unknown";

  if (queue_left == &bat_priv->bcast_queue_left)
   qname = "bcast";

  if (queue_left == &bat_priv->batman_queue_left)
   qname = "batman";

  batadv_dbg(BATADV_DBG_BATMAN, bat_priv,
      "%s queue is full\n", qname);

  return ((void*)0);
 }

 forw_packet = kmalloc(sizeof(*forw_packet), GFP_ATOMIC);
 if (!forw_packet)
  goto err;

 if (if_incoming)
  kref_get(&if_incoming->refcount);

 if (if_outgoing)
  kref_get(&if_outgoing->refcount);

 INIT_HLIST_NODE(&forw_packet->list);
 INIT_HLIST_NODE(&forw_packet->cleanup_list);
 forw_packet->skb = skb;
 forw_packet->queue_left = queue_left;
 forw_packet->if_incoming = if_incoming;
 forw_packet->if_outgoing = if_outgoing;
 forw_packet->num_packets = 0;

 return forw_packet;

err:
 if (queue_left)
  atomic_inc(queue_left);

 return ((void*)0);
}
