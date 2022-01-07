
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {void* ip_summed; } ;
struct mrt6msg {int im6_msgtype; int im6_dst; int im6_src; scalar_t__ im6_pad; int im6_mif; scalar_t__ im6_mbz; } ;
struct mr_table {int mroute_sk; int mroute_reg_vif_num; } ;
struct ipv6hdr {int dummy; } ;
typedef int mifi_t ;
struct TYPE_3__ {int daddr; int saddr; } ;


 void* CHECKSUM_UNNECESSARY ;
 int EINVAL ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int MRT6MSG_WHOLEPKT ;
 struct sk_buff* alloc_skb (int,int ) ;
 int dst_clone (int ) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mrt6msg_netlink_event (struct mr_table*,struct sk_buff*) ;
 int net_warn_ratelimited (char*) ;
 struct sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_copy_to_linear_data (struct sk_buff*,TYPE_1__*,int) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int ip6mr_cache_report(struct mr_table *mrt, struct sk_buff *pkt,
         mifi_t mifi, int assert)
{
 struct sock *mroute6_sk;
 struct sk_buff *skb;
 struct mrt6msg *msg;
 int ret;







  skb = alloc_skb(sizeof(struct ipv6hdr) + sizeof(*msg), GFP_ATOMIC);

 if (!skb)
  return -ENOBUFS;




 skb->ip_summed = CHECKSUM_UNNECESSARY;
 {




 skb_put(skb, sizeof(struct ipv6hdr));
 skb_reset_network_header(skb);
 skb_copy_to_linear_data(skb, ipv6_hdr(pkt), sizeof(struct ipv6hdr));




 skb_put(skb, sizeof(*msg));
 skb_reset_transport_header(skb);
 msg = (struct mrt6msg *)skb_transport_header(skb);

 msg->im6_mbz = 0;
 msg->im6_msgtype = assert;
 msg->im6_mif = mifi;
 msg->im6_pad = 0;
 msg->im6_src = ipv6_hdr(pkt)->saddr;
 msg->im6_dst = ipv6_hdr(pkt)->daddr;

 skb_dst_set(skb, dst_clone(skb_dst(pkt)));
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 }

 rcu_read_lock();
 mroute6_sk = rcu_dereference(mrt->mroute_sk);
 if (!mroute6_sk) {
  rcu_read_unlock();
  kfree_skb(skb);
  return -EINVAL;
 }

 mrt6msg_netlink_event(mrt, skb);


 ret = sock_queue_rcv_skb(mroute6_sk, skb);
 rcu_read_unlock();
 if (ret < 0) {
  net_warn_ratelimited("mroute6: pending queue full, dropping entries\n");
  kfree_skb(skb);
 }

 return ret;
}
