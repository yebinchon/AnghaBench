
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int priority; } ;
struct net_device {int needed_tailroom; int ifindex; } ;
struct TYPE_3__ {struct sock* igmp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct mld_msg {int mld_type; int mld_cksum; struct in6_addr mld_mca; } ;
struct ipv6hdr {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct icmp6hdr {int dummy; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef int ra ;
struct TYPE_4__ {int daddr; int saddr; } ;


 int ICMP6MSGOUT_INC_STATS (struct net*,struct inet6_dev*,int) ;
 int ICMP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_MIB_OUTMSGS ;
 int ICMPV6_MGM_REDUCTION ;
 int IFA_F_TENTATIVE ;
 int IP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int IP6_UPD_PO_STATS (struct net*,struct inet6_dev*,int ,int) ;
 int IPPROTO_ICMPV6 ;
 int IPSTATS_MIB_OUT ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IPV6_TLV_PADN ;
 int IPV6_TLV_ROUTERALERT ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int NEXTHDR_HOP ;
 int NFPROTO_IPV6 ;
 int NF_HOOK (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,struct net_device*,int ) ;
 int NF_INET_LOCAL_OUT ;
 int PTR_ERR (struct dst_entry*) ;
 int TC_PRIO_CONTROL ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int csum_ipv6_magic (struct in6_addr const*,struct in6_addr const*,int,int,int ) ;
 int csum_partial (struct mld_msg*,int,int ) ;
 struct net* dev_net (struct net_device*) ;
 int dst_output ;
 struct dst_entry* icmp6_dst_alloc (struct net_device*,struct flowi6*) ;
 int icmpv6_flow_init (struct sock*,struct flowi6*,int,int *,int *,int ) ;
 struct in6_addr in6addr_any ;
 struct in6_addr in6addr_linklocal_allrouters ;
 int ip6_mc_hdr (struct sock*,struct sk_buff*,struct net_device*,struct in6_addr const*,struct in6_addr const*,int ,int) ;
 scalar_t__ ipv6_get_lladdr (struct net_device*,struct in6_addr*,int ) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_put_data (struct sk_buff*,int*,int) ;
 struct mld_msg* skb_put_zero (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int,int*) ;

__attribute__((used)) static void igmp6_send(struct in6_addr *addr, struct net_device *dev, int type)
{
 struct net *net = dev_net(dev);
 struct sock *sk = net->ipv6.igmp_sk;
 struct inet6_dev *idev;
 struct sk_buff *skb;
 struct mld_msg *hdr;
 const struct in6_addr *snd_addr, *saddr;
 struct in6_addr addr_buf;
 int hlen = LL_RESERVED_SPACE(dev);
 int tlen = dev->needed_tailroom;
 int err, len, payload_len, full_len;
 u8 ra[8] = { IPPROTO_ICMPV6, 0,
       IPV6_TLV_ROUTERALERT, 2, 0, 0,
       IPV6_TLV_PADN, 0 };
 struct flowi6 fl6;
 struct dst_entry *dst;

 if (type == ICMPV6_MGM_REDUCTION)
  snd_addr = &in6addr_linklocal_allrouters;
 else
  snd_addr = addr;

 len = sizeof(struct icmp6hdr) + sizeof(struct in6_addr);
 payload_len = len + sizeof(ra);
 full_len = sizeof(struct ipv6hdr) + payload_len;

 rcu_read_lock();
 IP6_UPD_PO_STATS(net, __in6_dev_get(dev),
        IPSTATS_MIB_OUT, full_len);
 rcu_read_unlock();

 skb = sock_alloc_send_skb(sk, hlen + tlen + full_len, 1, &err);

 if (!skb) {
  rcu_read_lock();
  IP6_INC_STATS(net, __in6_dev_get(dev),
         IPSTATS_MIB_OUTDISCARDS);
  rcu_read_unlock();
  return;
 }
 skb->priority = TC_PRIO_CONTROL;
 skb_reserve(skb, hlen);

 if (ipv6_get_lladdr(dev, &addr_buf, IFA_F_TENTATIVE)) {




  saddr = &in6addr_any;
 } else
  saddr = &addr_buf;

 ip6_mc_hdr(sk, skb, dev, saddr, snd_addr, NEXTHDR_HOP, payload_len);

 skb_put_data(skb, ra, sizeof(ra));

 hdr = skb_put_zero(skb, sizeof(struct mld_msg));
 hdr->mld_type = type;
 hdr->mld_mca = *addr;

 hdr->mld_cksum = csum_ipv6_magic(saddr, snd_addr, len,
      IPPROTO_ICMPV6,
      csum_partial(hdr, len, 0));

 rcu_read_lock();
 idev = __in6_dev_get(skb->dev);

 icmpv6_flow_init(sk, &fl6, type,
    &ipv6_hdr(skb)->saddr, &ipv6_hdr(skb)->daddr,
    skb->dev->ifindex);
 dst = icmp6_dst_alloc(skb->dev, &fl6);
 if (IS_ERR(dst)) {
  err = PTR_ERR(dst);
  goto err_out;
 }

 skb_dst_set(skb, dst);
 err = NF_HOOK(NFPROTO_IPV6, NF_INET_LOCAL_OUT,
        net, sk, skb, ((void*)0), skb->dev,
        dst_output);
out:
 if (!err) {
  ICMP6MSGOUT_INC_STATS(net, idev, type);
  ICMP6_INC_STATS(net, idev, ICMP6_MIB_OUTMSGS);
 } else
  IP6_INC_STATS(net, idev, IPSTATS_MIB_OUTDISCARDS);

 rcu_read_unlock();
 return;

err_out:
 kfree_skb(skb);
 goto out;
}
