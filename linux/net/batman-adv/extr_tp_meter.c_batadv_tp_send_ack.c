
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {TYPE_1__* net_dev; int orig; } ;
struct batadv_icmp_tp_packet {int uid; int timestamp; int seqno; int session; int subtype; int orig; int dst; int msg_type; int ttl; int version; int packet_type; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; int orig; } ;
typedef int __be32 ;
struct TYPE_2__ {int dev_addr; } ;


 int BATADV_COMPAT_VERSION ;
 int BATADV_ICMP ;
 int BATADV_TP ;
 int BATADV_TP_ACK ;
 int BATADV_TP_REASON_DST_UNREACHABLE ;
 int BATADV_TP_REASON_MEMORY_ERROR ;
 int BATADV_TTL ;
 scalar_t__ ETH_HLEN ;
 int NET_XMIT_DROP ;
 int batadv_hardif_put (struct batadv_orig_node*) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int const*) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_orig_node* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_send_skb_to_orig (struct sk_buff*,struct batadv_orig_node*,int *) ;
 int ether_addr_copy (int ,int ) ;
 int htonl (int ) ;
 scalar_t__ likely (struct batadv_orig_node*) ;
 int memcpy (int ,int const*,int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int *,scalar_t__) ;
 struct batadv_icmp_tp_packet* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int batadv_tp_send_ack(struct batadv_priv *bat_priv, const u8 *dst,
         u32 seq, __be32 timestamp, const u8 *session,
         int socket_index)
{
 struct batadv_hard_iface *primary_if = ((void*)0);
 struct batadv_orig_node *orig_node;
 struct batadv_icmp_tp_packet *icmp;
 struct sk_buff *skb;
 int r, ret;

 orig_node = batadv_orig_hash_find(bat_priv, dst);
 if (unlikely(!orig_node)) {
  ret = BATADV_TP_REASON_DST_UNREACHABLE;
  goto out;
 }

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (unlikely(!primary_if)) {
  ret = BATADV_TP_REASON_DST_UNREACHABLE;
  goto out;
 }

 skb = netdev_alloc_skb_ip_align(((void*)0), sizeof(*icmp) + ETH_HLEN);
 if (unlikely(!skb)) {
  ret = BATADV_TP_REASON_MEMORY_ERROR;
  goto out;
 }

 skb_reserve(skb, ETH_HLEN);
 icmp = skb_put(skb, sizeof(*icmp));
 icmp->packet_type = BATADV_ICMP;
 icmp->version = BATADV_COMPAT_VERSION;
 icmp->ttl = BATADV_TTL;
 icmp->msg_type = BATADV_TP;
 ether_addr_copy(icmp->dst, orig_node->orig);
 ether_addr_copy(icmp->orig, primary_if->net_dev->dev_addr);
 icmp->uid = socket_index;

 icmp->subtype = BATADV_TP_ACK;
 memcpy(icmp->session, session, sizeof(icmp->session));
 icmp->seqno = htonl(seq);
 icmp->timestamp = timestamp;


 r = batadv_send_skb_to_orig(skb, orig_node, ((void*)0));
 if (unlikely(r < 0) || r == NET_XMIT_DROP) {
  ret = BATADV_TP_REASON_DST_UNREACHABLE;
  goto out;
 }
 ret = 0;

out:
 if (likely(orig_node))
  batadv_orig_node_put(orig_node);
 if (likely(primary_if))
  batadv_hardif_put(primary_if);

 return ret;
}
