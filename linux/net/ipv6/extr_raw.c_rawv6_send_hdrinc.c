
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockcm_cookie {int tsflags; int transmit_time; int mark; } ;
struct sock {int sk_priority; } ;
struct sk_buff {int len; int network_header; int transport_header; int ip_summed; int tstamp; int mark; int priority; int protocol; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;
struct rt6_info {int rt6i_idev; TYPE_1__ dst; } ;
struct net {int dummy; } ;
struct msghdr {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_pinfo {int recverr; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_5__ {int needed_tailroom; int mtu; } ;


 int CHECKSUM_NONE ;
 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_P_IPV6 ;
 int IP6_INC_STATS (struct net*,int ,int ) ;
 int IP6_UPD_PO_STATS (struct net*,int ,int ,int ) ;
 int IPSTATS_MIB_OUT ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int LL_RESERVED_SPACE (TYPE_2__*) ;
 unsigned int MSG_CONFIRM ;
 unsigned int MSG_DONTWAIT ;
 unsigned int MSG_PROBE ;
 int NFPROTO_IPV6 ;
 int NF_HOOK (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,TYPE_2__*,int ) ;
 int NF_INET_LOCAL_OUT ;
 int dst_output ;
 int htons (int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_local_error (struct sock*,int,struct flowi6*,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* l3mdev_ip6_out (struct sock*,struct sk_buff*) ;
 int memcpy_from_msg (struct ipv6hdr*,struct msghdr*,int) ;
 int net_xmit_errno (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_dst_set (struct sk_buff*,TYPE_1__*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_dst_pending_confirm (struct sk_buff*,int) ;
 int skb_setup_tx_timestamp (struct sk_buff*,int ) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,unsigned int,int*) ;
 struct net* sock_net (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rawv6_send_hdrinc(struct sock *sk, struct msghdr *msg, int length,
   struct flowi6 *fl6, struct dst_entry **dstp,
   unsigned int flags, const struct sockcm_cookie *sockc)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct net *net = sock_net(sk);
 struct ipv6hdr *iph;
 struct sk_buff *skb;
 int err;
 struct rt6_info *rt = (struct rt6_info *)*dstp;
 int hlen = LL_RESERVED_SPACE(rt->dst.dev);
 int tlen = rt->dst.dev->needed_tailroom;

 if (length > rt->dst.dev->mtu) {
  ipv6_local_error(sk, EMSGSIZE, fl6, rt->dst.dev->mtu);
  return -EMSGSIZE;
 }
 if (length < sizeof(struct ipv6hdr))
  return -EINVAL;
 if (flags&MSG_PROBE)
  goto out;

 skb = sock_alloc_send_skb(sk,
      length + hlen + tlen + 15,
      flags & MSG_DONTWAIT, &err);
 if (!skb)
  goto error;
 skb_reserve(skb, hlen);

 skb->protocol = htons(ETH_P_IPV6);
 skb->priority = sk->sk_priority;
 skb->mark = sockc->mark;
 skb->tstamp = sockc->transmit_time;

 skb_put(skb, length);
 skb_reset_network_header(skb);
 iph = ipv6_hdr(skb);

 skb->ip_summed = CHECKSUM_NONE;

 skb_setup_tx_timestamp(skb, sockc->tsflags);

 if (flags & MSG_CONFIRM)
  skb_set_dst_pending_confirm(skb, 1);

 skb->transport_header = skb->network_header;
 err = memcpy_from_msg(iph, msg, length);
 if (err) {
  err = -EFAULT;
  kfree_skb(skb);
  goto error;
 }

 skb_dst_set(skb, &rt->dst);
 *dstp = ((void*)0);




 skb = l3mdev_ip6_out(sk, skb);
 if (unlikely(!skb))
  return 0;





 rcu_read_lock();
 IP6_UPD_PO_STATS(net, rt->rt6i_idev, IPSTATS_MIB_OUT, skb->len);
 err = NF_HOOK(NFPROTO_IPV6, NF_INET_LOCAL_OUT, net, sk, skb,
        ((void*)0), rt->dst.dev, dst_output);
 if (err > 0)
  err = net_xmit_errno(err);
 if (err) {
  IP6_INC_STATS(net, rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
  rcu_read_unlock();
  goto error_check;
 }
 rcu_read_unlock();
out:
 return 0;

error:
 IP6_INC_STATS(net, rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
error_check:
 if (err == -ENOBUFS && !np->recverr)
  err = 0;
 return err;
}
