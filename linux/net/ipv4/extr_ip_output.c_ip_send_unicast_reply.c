
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct sock {int sk_bound_dev_if; int sk_write_queue; int sk_mark; int sk_sndbuf; int sk_protocol; } ;
struct sk_buff {int skb_iif; int ip_summed; int csum; int mark; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_8__ {int transmit_time; } ;
struct ipcm_cookie {TYPE_2__* opt; TYPE_1__ sockc; int addr; } ;
struct ip_reply_arg {int bound_dev_if; scalar_t__ csumoffset; int csum; TYPE_3__* iov; int tos; int uid; } ;
struct TYPE_14__ {int faddr; scalar_t__ srr; scalar_t__ optlen; } ;
struct TYPE_9__ {TYPE_7__ opt; } ;
struct ip_options_data {TYPE_2__ opt; } ;
struct ip_options {int dummy; } ;
struct flowi4 {int flowi4_mark; } ;
typedef int __sum16 ;
typedef int __be32 ;
struct TYPE_13__ {int tos; } ;
struct TYPE_12__ {int protocol; } ;
struct TYPE_11__ {int dest; int source; } ;
struct TYPE_10__ {int iov_base; } ;


 int CHECKSUM_NONE ;
 scalar_t__ IP4_REPLY_MARK (struct net*,int ) ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int MSG_DONTWAIT ;
 int RT_SCOPE_UNIVERSE ;
 int RT_TOS (int ) ;
 scalar_t__ __ip_options_echo (struct net*,TYPE_7__*,struct sk_buff*,struct ip_options const*) ;
 int csum_add (int ,int ) ;
 int csum_fold (int ) ;
 int flowi4_init_output (struct flowi4*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int flowi4_to_flowi (struct flowi4*) ;
 TYPE_6__* inet_sk (struct sock*) ;
 int ip_append_data (struct sock*,struct flowi4*,int ,int ,unsigned int,int ,struct ipcm_cookie*,struct rtable**,int ) ;
 int ip_flush_pending_frames (struct sock*) ;
 TYPE_5__* ip_hdr (struct sk_buff*) ;
 int ip_push_pending_frames (struct sock*,struct flowi4*) ;
 int ip_reply_arg_flowi_flags (struct ip_reply_arg const*) ;
 int ip_reply_glue_bits ;
 struct rtable* ip_route_output_key (struct net*,struct flowi4*) ;
 int ip_rt_put (struct rtable*) ;
 int ipcm_init (struct ipcm_cookie*) ;
 scalar_t__ netif_index_is_l3_master (struct net*,int) ;
 int security_skb_classify_flow (struct sk_buff*,int ) ;
 struct sk_buff* skb_peek (int *) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 struct net* sock_net (struct sock*) ;
 int sysctl_wmem_default ;
 TYPE_4__* tcp_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

void ip_send_unicast_reply(struct sock *sk, struct sk_buff *skb,
      const struct ip_options *sopt,
      __be32 daddr, __be32 saddr,
      const struct ip_reply_arg *arg,
      unsigned int len, u64 transmit_time)
{
 struct ip_options_data replyopts;
 struct ipcm_cookie ipc;
 struct flowi4 fl4;
 struct rtable *rt = skb_rtable(skb);
 struct net *net = sock_net(sk);
 struct sk_buff *nskb;
 int err;
 int oif;

 if (__ip_options_echo(net, &replyopts.opt.opt, skb, sopt))
  return;

 ipcm_init(&ipc);
 ipc.addr = daddr;
 ipc.sockc.transmit_time = transmit_time;

 if (replyopts.opt.opt.optlen) {
  ipc.opt = &replyopts.opt;

  if (replyopts.opt.opt.srr)
   daddr = replyopts.opt.opt.faddr;
 }

 oif = arg->bound_dev_if;
 if (!oif && netif_index_is_l3_master(net, skb->skb_iif))
  oif = skb->skb_iif;

 flowi4_init_output(&fl4, oif,
      IP4_REPLY_MARK(net, skb->mark) ?: sk->sk_mark,
      RT_TOS(arg->tos),
      RT_SCOPE_UNIVERSE, ip_hdr(skb)->protocol,
      ip_reply_arg_flowi_flags(arg),
      daddr, saddr,
      tcp_hdr(skb)->source, tcp_hdr(skb)->dest,
      arg->uid);
 security_skb_classify_flow(skb, flowi4_to_flowi(&fl4));
 rt = ip_route_output_key(net, &fl4);
 if (IS_ERR(rt))
  return;

 inet_sk(sk)->tos = arg->tos;

 sk->sk_protocol = ip_hdr(skb)->protocol;
 sk->sk_bound_dev_if = arg->bound_dev_if;
 sk->sk_sndbuf = sysctl_wmem_default;
 sk->sk_mark = fl4.flowi4_mark;
 err = ip_append_data(sk, &fl4, ip_reply_glue_bits, arg->iov->iov_base,
        len, 0, &ipc, &rt, MSG_DONTWAIT);
 if (unlikely(err)) {
  ip_flush_pending_frames(sk);
  goto out;
 }

 nskb = skb_peek(&sk->sk_write_queue);
 if (nskb) {
  if (arg->csumoffset >= 0)
   *((__sum16 *)skb_transport_header(nskb) +
     arg->csumoffset) = csum_fold(csum_add(nskb->csum,
        arg->csum));
  nskb->ip_summed = CHECKSUM_NONE;
  ip_push_pending_frames(sk, &fl4);
 }
out:
 ip_rt_put(rt);
}
