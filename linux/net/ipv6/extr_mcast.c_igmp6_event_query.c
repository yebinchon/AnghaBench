
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct in6_addr {int dummy; } ;
struct mld_msg {struct in6_addr mld_mca; } ;
struct mld2_query {scalar_t__ mld2q_nsrcs; int mld2q_srcs; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int lock; struct ifmcaddr6* mc_list; } ;
struct ifmcaddr6 {int mca_flags; int mca_lock; int mca_addr; struct ifmcaddr6* next; } ;
struct icmp6hdr {int dummy; } ;
struct TYPE_4__ {int flags; scalar_t__ ra; } ;
struct TYPE_3__ {scalar_t__ payload_len; int hop_limit; struct in6_addr const saddr; } ;


 int EINVAL ;
 TYPE_2__* IP6CB (struct sk_buff*) ;
 int IP6SKB_ROUTERALERT ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MULTICAST ;
 int IPV6_OPT_ROUTERALERT_MLD ;
 int MAF_GSQUERY ;
 int MAF_TIMER_RUNNING ;
 int MLD_V1_QUERY_LEN ;
 int MLD_V2_QUERY_LEN_MIN ;
 struct inet6_dev* __in6_dev_get (int ) ;
 scalar_t__ htons (int ) ;
 scalar_t__ icmp6_hdr (struct sk_buff*) ;
 int igmp6_group_queried (struct ifmcaddr6*,unsigned long) ;
 int ipv6_addr_equal (struct in6_addr const*,int *) ;
 int ipv6_addr_type (struct in6_addr const*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int mld_gq_start_timer (struct inet6_dev*) ;
 scalar_t__ mld_in_v1_mode (struct inet6_dev*) ;
 scalar_t__ mld_marksources (struct ifmcaddr6*,int,int ) ;
 int mld_process_v1 (struct inet6_dev*,struct mld_msg*,unsigned long*,int) ;
 int mld_process_v2 (struct inet6_dev*,struct mld2_query*,unsigned long*) ;
 int ntohs (scalar_t__) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ skb_network_header_len (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int igmp6_event_query(struct sk_buff *skb)
{
 struct mld2_query *mlh2 = ((void*)0);
 struct ifmcaddr6 *ma;
 const struct in6_addr *group;
 unsigned long max_delay;
 struct inet6_dev *idev;
 struct mld_msg *mld;
 int group_type;
 int mark = 0;
 int len, err;

 if (!pskb_may_pull(skb, sizeof(struct in6_addr)))
  return -EINVAL;


 len = ntohs(ipv6_hdr(skb)->payload_len) + sizeof(struct ipv6hdr);
 len -= skb_network_header_len(skb);
 if (!(ipv6_addr_type(&ipv6_hdr(skb)->saddr) & IPV6_ADDR_LINKLOCAL) ||
     ipv6_hdr(skb)->hop_limit != 1 ||
     !(IP6CB(skb)->flags & IP6SKB_ROUTERALERT) ||
     IP6CB(skb)->ra != htons(IPV6_OPT_ROUTERALERT_MLD))
  return -EINVAL;

 idev = __in6_dev_get(skb->dev);
 if (!idev)
  return 0;

 mld = (struct mld_msg *)icmp6_hdr(skb);
 group = &mld->mld_mca;
 group_type = ipv6_addr_type(group);

 if (group_type != IPV6_ADDR_ANY &&
     !(group_type&IPV6_ADDR_MULTICAST))
  return -EINVAL;

 if (len < MLD_V1_QUERY_LEN) {
  return -EINVAL;
 } else if (len == MLD_V1_QUERY_LEN || mld_in_v1_mode(idev)) {
  err = mld_process_v1(idev, mld, &max_delay,
         len == MLD_V1_QUERY_LEN);
  if (err < 0)
   return err;
 } else if (len >= MLD_V2_QUERY_LEN_MIN) {
  int srcs_offset = sizeof(struct mld2_query) -
      sizeof(struct icmp6hdr);

  if (!pskb_may_pull(skb, srcs_offset))
   return -EINVAL;

  mlh2 = (struct mld2_query *)skb_transport_header(skb);

  err = mld_process_v2(idev, mlh2, &max_delay);
  if (err < 0)
   return err;

  if (group_type == IPV6_ADDR_ANY) {
   if (mlh2->mld2q_nsrcs)
    return -EINVAL;

   mld_gq_start_timer(idev);
   return 0;
  }

  if (mlh2->mld2q_nsrcs != 0) {
   if (!pskb_may_pull(skb, srcs_offset +
       ntohs(mlh2->mld2q_nsrcs) * sizeof(struct in6_addr)))
    return -EINVAL;

   mlh2 = (struct mld2_query *)skb_transport_header(skb);
   mark = 1;
  }
 } else {
  return -EINVAL;
 }

 read_lock_bh(&idev->lock);
 if (group_type == IPV6_ADDR_ANY) {
  for (ma = idev->mc_list; ma; ma = ma->next) {
   spin_lock_bh(&ma->mca_lock);
   igmp6_group_queried(ma, max_delay);
   spin_unlock_bh(&ma->mca_lock);
  }
 } else {
  for (ma = idev->mc_list; ma; ma = ma->next) {
   if (!ipv6_addr_equal(group, &ma->mca_addr))
    continue;
   spin_lock_bh(&ma->mca_lock);
   if (ma->mca_flags & MAF_TIMER_RUNNING) {

    if (!mark)
     ma->mca_flags &= ~MAF_GSQUERY;
   } else {

    if (mark)
     ma->mca_flags |= MAF_GSQUERY;
    else
     ma->mca_flags &= ~MAF_GSQUERY;
   }
   if (!(ma->mca_flags & MAF_GSQUERY) ||
       mld_marksources(ma, ntohs(mlh2->mld2q_nsrcs), mlh2->mld2q_srcs))
    igmp6_group_queried(ma, max_delay);
   spin_unlock_bh(&ma->mca_lock);
   break;
  }
 }
 read_unlock_bh(&idev->lock);

 return 0;
}
