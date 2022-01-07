
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_mark; int sk_priority; int sk_protocol; } ;
struct sk_buff {int sk; scalar_t__ mark; int priority; } ;
struct rtable {int dst; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; scalar_t__ frag_off; scalar_t__ id; int protocol; void* saddr; void* daddr; int ttl; int tos; } ;
struct TYPE_2__ {int optlen; void* faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_sock {int tos; } ;
typedef void* __be32 ;


 int IP_DF ;
 int __ip_select_ident (struct net*,struct iphdr*,int) ;
 scalar_t__ htons (int ) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 scalar_t__ ip_dont_fragment (struct sock const*,int *) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_out (struct net*,int ,struct sk_buff*) ;
 int ip_options_build (struct sk_buff*,TYPE_1__*,void*,struct rtable*,int ) ;
 int ip_select_ttl (struct inet_sock*,int *) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 struct net* sock_net (struct sock const*) ;

int ip_build_and_send_pkt(struct sk_buff *skb, const struct sock *sk,
     __be32 saddr, __be32 daddr, struct ip_options_rcu *opt)
{
 struct inet_sock *inet = inet_sk(sk);
 struct rtable *rt = skb_rtable(skb);
 struct net *net = sock_net(sk);
 struct iphdr *iph;


 skb_push(skb, sizeof(struct iphdr) + (opt ? opt->opt.optlen : 0));
 skb_reset_network_header(skb);
 iph = ip_hdr(skb);
 iph->version = 4;
 iph->ihl = 5;
 iph->tos = inet->tos;
 iph->ttl = ip_select_ttl(inet, &rt->dst);
 iph->daddr = (opt && opt->opt.srr ? opt->opt.faddr : daddr);
 iph->saddr = saddr;
 iph->protocol = sk->sk_protocol;
 if (ip_dont_fragment(sk, &rt->dst)) {
  iph->frag_off = htons(IP_DF);
  iph->id = 0;
 } else {
  iph->frag_off = 0;
  __ip_select_ident(net, iph, 1);
 }

 if (opt && opt->opt.optlen) {
  iph->ihl += opt->opt.optlen>>2;
  ip_options_build(skb, &opt->opt, daddr, rt, 0);
 }

 skb->priority = sk->sk_priority;
 if (!skb->mark)
  skb->mark = sk->sk_mark;


 return ip_local_out(net, skb->sk, skb);
}
