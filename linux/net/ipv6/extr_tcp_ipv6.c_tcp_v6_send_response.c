
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tcphdr {unsigned int doff; int ack; int rst; int flowi6_oif; int flowi6_mark; int flowi6_uid; int source; int fl6_sport; int dest; int fl6_dport; int daddr; int flowi6_proto; int saddr; int flowlabel; int window; void* ack_seq; void* seq; } ;
struct tcp_md5sig_key {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_mark; } ;
struct sk_buff {int skb_iif; int mark; int tstamp; scalar_t__ csum; int ip_summed; } ;
struct TYPE_5__ {struct sock* tcp_sk; } ;
struct net {TYPE_1__ ipv6; } ;
struct ipv6hdr {int dummy; } ;
struct flowi6 {unsigned int doff; int ack; int rst; int flowi6_oif; int flowi6_mark; int flowi6_uid; int source; int fl6_sport; int dest; int fl6_dport; int daddr; int flowi6_proto; int saddr; int flowlabel; int window; void* ack_seq; void* seq; } ;
struct dst_entry {int dummy; } ;
typedef int fl6 ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __be32 ;
struct TYPE_8__ {int tw_txhash; int tw_mark; } ;
struct TYPE_7__ {int daddr; int saddr; } ;
struct TYPE_6__ {int dev; } ;


 int CHECKSUM_PARTIAL ;
 int GFP_ATOMIC ;
 scalar_t__ IP6_REPLY_MARK (struct net*,int ) ;
 int IPPROTO_TCP ;
 int IS_ERR (struct dst_entry*) ;
 scalar_t__ MAX_HEADER ;
 int PKT_HASH_TYPE_L4 ;
 int TCPOLEN_MD5SIG ;
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ;
 int TCPOLEN_TIMESTAMP ;
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ;
 int TCPOPT_MD5SIG ;
 int TCPOPT_NOP ;
 int TCPOPT_TIMESTAMP ;
 int TCP_INC_STATS (struct net*,int ) ;
 int TCP_MIB_OUTRSTS ;
 int TCP_MIB_OUTSEGS ;
 scalar_t__ TCP_TIME_WAIT ;
 int __tcp_v6_send_check (struct sk_buff*,int *,int *) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 struct net* dev_net (int ) ;
 int flowi6_to_flowi (struct tcphdr*) ;
 void* htonl (int) ;
 int htons (int) ;
 TYPE_4__* inet_twsk (struct sock const*) ;
 struct dst_entry* ip6_dst_lookup_flow (struct sock*,struct tcphdr*,int *) ;
 int ip6_xmit (struct sock*,struct sk_buff*,struct tcphdr*,int ,int *,int ,int) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct tcphdr*,int ,int) ;
 scalar_t__ netif_index_is_l3_master (struct net*,int) ;
 scalar_t__ rt6_need_strict (int *) ;
 int security_skb_classify_flow (struct sk_buff*,int ) ;
 scalar_t__ sk_fullsock (struct sock const*) ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 struct tcphdr* skb_push (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 struct net* sock_net (struct sock const*) ;
 int sock_net_uid (struct net*,struct sock const*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 int tcp_transmit_time (struct sock const*) ;
 int tcp_v6_iif (struct sk_buff*) ;
 int tcp_v6_md5_hash_hdr (int *,struct tcp_md5sig_key*,int *,int *,struct tcphdr*) ;

__attribute__((used)) static void tcp_v6_send_response(const struct sock *sk, struct sk_buff *skb, u32 seq,
     u32 ack, u32 win, u32 tsval, u32 tsecr,
     int oif, struct tcp_md5sig_key *key, int rst,
     u8 tclass, __be32 label, u32 priority)
{
 const struct tcphdr *th = tcp_hdr(skb);
 struct tcphdr *t1;
 struct sk_buff *buff;
 struct flowi6 fl6;
 struct net *net = sk ? sock_net(sk) : dev_net(skb_dst(skb)->dev);
 struct sock *ctl_sk = net->ipv6.tcp_sk;
 unsigned int tot_len = sizeof(struct tcphdr);
 struct dst_entry *dst;
 __be32 *topt;
 __u32 mark = 0;

 if (tsecr)
  tot_len += TCPOLEN_TSTAMP_ALIGNED;





 buff = alloc_skb(MAX_HEADER + sizeof(struct ipv6hdr) + tot_len,
    GFP_ATOMIC);
 if (!buff)
  return;

 skb_reserve(buff, MAX_HEADER + sizeof(struct ipv6hdr) + tot_len);

 t1 = skb_push(buff, tot_len);
 skb_reset_transport_header(buff);


 memset(t1, 0, sizeof(*t1));
 t1->dest = th->source;
 t1->source = th->dest;
 t1->doff = tot_len / 4;
 t1->seq = htonl(seq);
 t1->ack_seq = htonl(ack);
 t1->ack = !rst || !th->ack;
 t1->rst = rst;
 t1->window = htons(win);

 topt = (__be32 *)(t1 + 1);

 if (tsecr) {
  *topt++ = htonl((TCPOPT_NOP << 24) | (TCPOPT_NOP << 16) |
    (TCPOPT_TIMESTAMP << 8) | TCPOLEN_TIMESTAMP);
  *topt++ = htonl(tsval);
  *topt++ = htonl(tsecr);
 }
 memset(&fl6, 0, sizeof(fl6));
 fl6.daddr = ipv6_hdr(skb)->saddr;
 fl6.saddr = ipv6_hdr(skb)->daddr;
 fl6.flowlabel = label;

 buff->ip_summed = CHECKSUM_PARTIAL;
 buff->csum = 0;

 __tcp_v6_send_check(buff, &fl6.saddr, &fl6.daddr);

 fl6.flowi6_proto = IPPROTO_TCP;
 if (rt6_need_strict(&fl6.daddr) && !oif)
  fl6.flowi6_oif = tcp_v6_iif(skb);
 else {
  if (!oif && netif_index_is_l3_master(net, skb->skb_iif))
   oif = skb->skb_iif;

  fl6.flowi6_oif = oif;
 }

 if (sk) {
  if (sk->sk_state == TCP_TIME_WAIT) {
   mark = inet_twsk(sk)->tw_mark;

   skb_set_hash(buff, inet_twsk(sk)->tw_txhash,
         PKT_HASH_TYPE_L4);
  } else {
   mark = sk->sk_mark;
  }
  buff->tstamp = tcp_transmit_time(sk);
 }
 fl6.flowi6_mark = IP6_REPLY_MARK(net, skb->mark) ?: mark;
 fl6.fl6_dport = t1->dest;
 fl6.fl6_sport = t1->source;
 fl6.flowi6_uid = sock_net_uid(net, sk && sk_fullsock(sk) ? sk : ((void*)0));
 security_skb_classify_flow(skb, flowi6_to_flowi(&fl6));





 dst = ip6_dst_lookup_flow(ctl_sk, &fl6, ((void*)0));
 if (!IS_ERR(dst)) {
  skb_dst_set(buff, dst);
  ip6_xmit(ctl_sk, buff, &fl6, fl6.flowi6_mark, ((void*)0), tclass,
    priority);
  TCP_INC_STATS(net, TCP_MIB_OUTSEGS);
  if (rst)
   TCP_INC_STATS(net, TCP_MIB_OUTRSTS);
  return;
 }

 kfree_skb(buff);
}
