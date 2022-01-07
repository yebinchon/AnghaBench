
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockcm_cookie {int tsflags; int transmit_time; int mark; } ;
struct sock {int sk_priority; } ;
struct sk_buff {unsigned int transport_header; unsigned int network_header; int ip_summed; int tstamp; int mark; int priority; } ;
struct TYPE_4__ {TYPE_2__* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net {int dummy; } ;
struct msghdr {int dummy; } ;
struct iphdr {int ihl; scalar_t__ protocol; scalar_t__ check; int id; int tot_len; scalar_t__ saddr; } ;
struct inet_sock {int recverr; int inet_dport; } ;
struct icmphdr {int type; } ;
struct flowi4 {scalar_t__ saddr; int daddr; } ;
struct TYPE_5__ {size_t mtu; int needed_tailroom; } ;


 int CHECKSUM_NONE ;
 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 scalar_t__ IPPROTO_ICMP ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IP_INC_STATS (struct net*,int ) ;
 int LL_RESERVED_SPACE (TYPE_2__*) ;
 unsigned int MSG_CONFIRM ;
 unsigned int MSG_DONTWAIT ;
 unsigned int MSG_PROBE ;
 int NFPROTO_IPV4 ;
 int NF_HOOK (int ,int ,struct net*,struct sock*,struct sk_buff*,int *,TYPE_2__*,int ) ;
 int NF_INET_LOCAL_OUT ;
 int dst_output ;
 int htons (size_t) ;
 int icmp_out_count (struct net*,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ip_fast_csum (unsigned char*,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_error (struct sock*,int,int ,int ,size_t) ;
 int ip_select_ident (struct net*,struct sk_buff*,int *) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcpy_from_msg (struct iphdr*,struct msghdr*,size_t) ;
 int net_xmit_errno (int) ;
 int skb_dst_set (struct sk_buff*,TYPE_1__*) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_set_dst_pending_confirm (struct sk_buff*,int) ;
 int skb_setup_tx_timestamp (struct sk_buff*,int ) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,size_t,unsigned int,int*) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static int raw_send_hdrinc(struct sock *sk, struct flowi4 *fl4,
      struct msghdr *msg, size_t length,
      struct rtable **rtp, unsigned int flags,
      const struct sockcm_cookie *sockc)
{
 struct inet_sock *inet = inet_sk(sk);
 struct net *net = sock_net(sk);
 struct iphdr *iph;
 struct sk_buff *skb;
 unsigned int iphlen;
 int err;
 struct rtable *rt = *rtp;
 int hlen, tlen;

 if (length > rt->dst.dev->mtu) {
  ip_local_error(sk, EMSGSIZE, fl4->daddr, inet->inet_dport,
          rt->dst.dev->mtu);
  return -EMSGSIZE;
 }
 if (length < sizeof(struct iphdr))
  return -EINVAL;

 if (flags&MSG_PROBE)
  goto out;

 hlen = LL_RESERVED_SPACE(rt->dst.dev);
 tlen = rt->dst.dev->needed_tailroom;
 skb = sock_alloc_send_skb(sk,
      length + hlen + tlen + 15,
      flags & MSG_DONTWAIT, &err);
 if (!skb)
  goto error;
 skb_reserve(skb, hlen);

 skb->priority = sk->sk_priority;
 skb->mark = sockc->mark;
 skb->tstamp = sockc->transmit_time;
 skb_dst_set(skb, &rt->dst);
 *rtp = ((void*)0);

 skb_reset_network_header(skb);
 iph = ip_hdr(skb);
 skb_put(skb, length);

 skb->ip_summed = CHECKSUM_NONE;

 skb_setup_tx_timestamp(skb, sockc->tsflags);

 if (flags & MSG_CONFIRM)
  skb_set_dst_pending_confirm(skb, 1);

 skb->transport_header = skb->network_header;
 err = -EFAULT;
 if (memcpy_from_msg(iph, msg, length))
  goto error_free;

 iphlen = iph->ihl * 4;
 err = -EINVAL;
 if (iphlen > length)
  goto error_free;

 if (iphlen >= sizeof(*iph)) {
  if (!iph->saddr)
   iph->saddr = fl4->saddr;
  iph->check = 0;
  iph->tot_len = htons(length);
  if (!iph->id)
   ip_select_ident(net, skb, ((void*)0));

  iph->check = ip_fast_csum((unsigned char *)iph, iph->ihl);
  skb->transport_header += iphlen;
  if (iph->protocol == IPPROTO_ICMP &&
      length >= iphlen + sizeof(struct icmphdr))
   icmp_out_count(net, ((struct icmphdr *)
    skb_transport_header(skb))->type);
 }

 err = NF_HOOK(NFPROTO_IPV4, NF_INET_LOCAL_OUT,
        net, sk, skb, ((void*)0), rt->dst.dev,
        dst_output);
 if (err > 0)
  err = net_xmit_errno(err);
 if (err)
  goto error;
out:
 return 0;

error_free:
 kfree_skb(skb);
error:
 IP_INC_STATS(net, IPSTATS_MIB_OUTDISCARDS);
 if (err == -ENOBUFS && !inet->recverr)
  err = 0;
 return err;
}
