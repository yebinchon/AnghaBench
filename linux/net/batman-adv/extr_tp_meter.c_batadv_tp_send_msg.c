
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct batadv_tp_vars {int dummy; } ;
struct batadv_orig_node {int const* orig; } ;
struct batadv_icmp_tp_packet {int uid; void* timestamp; void* seqno; int session; int subtype; int msg_type; int ttl; int packet_type; int version; int orig; int dst; } ;


 int BATADV_COMPAT_VERSION ;
 int BATADV_ICMP ;
 int BATADV_TP ;
 int BATADV_TP_MSG ;
 int BATADV_TP_REASON_CANT_SEND ;
 int BATADV_TP_REASON_MEMORY_ERROR ;
 int BATADV_TTL ;
 scalar_t__ ETH_HLEN ;
 int NET_XMIT_SUCCESS ;
 int batadv_send_skb_to_orig (struct sk_buff*,struct batadv_orig_node*,int *) ;
 int batadv_tp_fill_prerandom (struct batadv_tp_vars*,int *,size_t) ;
 int ether_addr_copy (int ,int const*) ;
 void* htonl (int ) ;
 int memcpy (int ,int const*,int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (int *,scalar_t__) ;
 void* skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int batadv_tp_send_msg(struct batadv_tp_vars *tp_vars, const u8 *src,
         struct batadv_orig_node *orig_node,
         u32 seqno, size_t len, const u8 *session,
         int uid, u32 timestamp)
{
 struct batadv_icmp_tp_packet *icmp;
 struct sk_buff *skb;
 int r;
 u8 *data;
 size_t data_len;

 skb = netdev_alloc_skb_ip_align(((void*)0), len + ETH_HLEN);
 if (unlikely(!skb))
  return BATADV_TP_REASON_MEMORY_ERROR;

 skb_reserve(skb, ETH_HLEN);
 icmp = skb_put(skb, sizeof(*icmp));


 ether_addr_copy(icmp->dst, orig_node->orig);
 ether_addr_copy(icmp->orig, src);
 icmp->version = BATADV_COMPAT_VERSION;
 icmp->packet_type = BATADV_ICMP;
 icmp->ttl = BATADV_TTL;
 icmp->msg_type = BATADV_TP;
 icmp->uid = uid;

 icmp->subtype = BATADV_TP_MSG;
 memcpy(icmp->session, session, sizeof(icmp->session));
 icmp->seqno = htonl(seqno);
 icmp->timestamp = htonl(timestamp);

 data_len = len - sizeof(*icmp);
 data = skb_put(skb, data_len);
 batadv_tp_fill_prerandom(tp_vars, data, data_len);

 r = batadv_send_skb_to_orig(skb, orig_node, ((void*)0));
 if (r == NET_XMIT_SUCCESS)
  return 0;

 return BATADV_TP_REASON_CANT_SEND;
}
