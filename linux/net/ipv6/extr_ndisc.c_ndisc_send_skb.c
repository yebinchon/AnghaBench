
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int len; TYPE_3__* dev; } ;
struct TYPE_5__ {struct sock* ndisc_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_cksum; int icmp6_type; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dev; } ;
struct TYPE_7__ {int ifindex; } ;
struct TYPE_6__ {int hop_limit; } ;


 int ICMP6MSGOUT_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_INC_STATS (struct net*,struct inet6_dev*,int ) ;
 int ICMP6_MIB_OUTMSGS ;
 int IP6_UPD_PO_STATS (struct net*,struct inet6_dev*,int ,int ) ;
 int IPPROTO_ICMPV6 ;
 int IPSTATS_MIB_OUT ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int NFPROTO_IPV6 ;
 int NF_HOOK (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,int ,int ) ;
 int NF_INET_LOCAL_OUT ;
 struct inet6_dev* __in6_dev_get (int ) ;
 int csum_ipv6_magic (struct in6_addr const*,struct in6_addr const*,int ,int ,int ) ;
 int csum_partial (struct icmp6hdr*,int ,int ) ;
 struct net* dev_net (TYPE_3__*) ;
 int dst_output ;
 struct dst_entry* icmp6_dst_alloc (TYPE_3__*,struct flowi6*) ;
 struct icmp6hdr* icmp6_hdr (struct sk_buff*) ;
 int icmpv6_flow_init (struct sock*,struct flowi6*,int ,struct in6_addr const*,struct in6_addr const*,int) ;
 TYPE_2__* inet6_sk (struct sock*) ;
 int ip6_nd_hdr (struct sk_buff*,struct in6_addr const*,struct in6_addr const*,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;

__attribute__((used)) static void ndisc_send_skb(struct sk_buff *skb,
      const struct in6_addr *daddr,
      const struct in6_addr *saddr)
{
 struct dst_entry *dst = skb_dst(skb);
 struct net *net = dev_net(skb->dev);
 struct sock *sk = net->ipv6.ndisc_sk;
 struct inet6_dev *idev;
 int err;
 struct icmp6hdr *icmp6h = icmp6_hdr(skb);
 u8 type;

 type = icmp6h->icmp6_type;

 if (!dst) {
  struct flowi6 fl6;
  int oif = skb->dev->ifindex;

  icmpv6_flow_init(sk, &fl6, type, saddr, daddr, oif);
  dst = icmp6_dst_alloc(skb->dev, &fl6);
  if (IS_ERR(dst)) {
   kfree_skb(skb);
   return;
  }

  skb_dst_set(skb, dst);
 }

 icmp6h->icmp6_cksum = csum_ipv6_magic(saddr, daddr, skb->len,
           IPPROTO_ICMPV6,
           csum_partial(icmp6h,
          skb->len, 0));

 ip6_nd_hdr(skb, saddr, daddr, inet6_sk(sk)->hop_limit, skb->len);

 rcu_read_lock();
 idev = __in6_dev_get(dst->dev);
 IP6_UPD_PO_STATS(net, idev, IPSTATS_MIB_OUT, skb->len);

 err = NF_HOOK(NFPROTO_IPV6, NF_INET_LOCAL_OUT,
        net, sk, skb, ((void*)0), dst->dev,
        dst_output);
 if (!err) {
  ICMP6MSGOUT_INC_STATS(net, idev, type);
  ICMP6_INC_STATS(net, idev, ICMP6_MIB_OUTMSGS);
 }

 rcu_read_unlock();
}
