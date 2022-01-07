
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* vifi_t ;
struct sock {int dummy; } ;
struct sk_buff {int network_header; int transport_header; scalar_t__ len; int data; } ;
struct mr_table {int mroute_sk; void* mroute_reg_vif_num; } ;
struct iphdr {int dummy; } ;
struct igmpmsg {int im_msgtype; void* im_vif; scalar_t__ im_mbz; } ;
struct igmphdr {int type; scalar_t__ code; } ;
struct TYPE_2__ {int ihl; void* tot_len; scalar_t__ protocol; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int IGMPMSG_WHOLEPKT ;
 int IGMPMSG_WRVIFWHOLE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int dst_clone (int ) ;
 void* htons (scalar_t__) ;
 int igmpmsg_netlink_event (struct mr_table*,struct sk_buff*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct igmpmsg*,scalar_t__,int) ;
 int net_warn_ratelimited (char*) ;
 scalar_t__ ntohs (void*) ;
 struct sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,int const) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 struct igmphdr* skb_put (struct sk_buff*,int const) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int ipmr_cache_report(struct mr_table *mrt,
        struct sk_buff *pkt, vifi_t vifi, int assert)
{
 const int ihl = ip_hdrlen(pkt);
 struct sock *mroute_sk;
 struct igmphdr *igmp;
 struct igmpmsg *msg;
 struct sk_buff *skb;
 int ret;

 if (assert == IGMPMSG_WHOLEPKT || assert == IGMPMSG_WRVIFWHOLE)
  skb = skb_realloc_headroom(pkt, sizeof(struct iphdr));
 else
  skb = alloc_skb(128, GFP_ATOMIC);

 if (!skb)
  return -ENOBUFS;

 if (assert == IGMPMSG_WHOLEPKT || assert == IGMPMSG_WRVIFWHOLE) {





  skb_push(skb, sizeof(struct iphdr));
  skb_reset_network_header(skb);
  skb_reset_transport_header(skb);
  msg = (struct igmpmsg *)skb_network_header(skb);
  memcpy(msg, skb_network_header(pkt), sizeof(struct iphdr));
  msg->im_msgtype = assert;
  msg->im_mbz = 0;
  if (assert == IGMPMSG_WRVIFWHOLE)
   msg->im_vif = vifi;
  else
   msg->im_vif = mrt->mroute_reg_vif_num;
  ip_hdr(skb)->ihl = sizeof(struct iphdr) >> 2;
  ip_hdr(skb)->tot_len = htons(ntohs(ip_hdr(pkt)->tot_len) +
          sizeof(struct iphdr));
 } else {

  skb_set_network_header(skb, skb->len);
  skb_put(skb, ihl);
  skb_copy_to_linear_data(skb, pkt->data, ihl);

  ip_hdr(skb)->protocol = 0;
  msg = (struct igmpmsg *)skb_network_header(skb);
  msg->im_vif = vifi;
  skb_dst_set(skb, dst_clone(skb_dst(pkt)));

  igmp = skb_put(skb, sizeof(struct igmphdr));
  igmp->type = assert;
  msg->im_msgtype = assert;
  igmp->code = 0;
  ip_hdr(skb)->tot_len = htons(skb->len);
  skb->transport_header = skb->network_header;
 }

 rcu_read_lock();
 mroute_sk = rcu_dereference(mrt->mroute_sk);
 if (!mroute_sk) {
  rcu_read_unlock();
  kfree_skb(skb);
  return -EINVAL;
 }

 igmpmsg_netlink_event(mrt, skb);


 ret = sock_queue_rcv_skb(mroute_sk, skb);
 rcu_read_unlock();
 if (ret < 0) {
  net_warn_ratelimited("mroute: pending queue full, dropping entries\n");
  kfree_skb(skb);
 }

 return ret;
}
