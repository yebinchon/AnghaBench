
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ const dest; int source; int fin; int ack; int rst; scalar_t__ syn; } ;
struct sock {int dummy; } ;
struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct in6_addr {int dummy; } ;
typedef int _hdr ;
typedef scalar_t__ __be16 ;


 int NF_TPROXY_LOOKUP_LISTENER ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_deschedule_put (int ) ;
 int inet_twsk_put (int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 struct sock* nf_tproxy_get_sock_v6 (struct net*,struct sk_buff*,int,int,int *,int ,int ,scalar_t__ const,int ,int ) ;
 int nf_tproxy_laddr6 (struct sk_buff*,struct in6_addr const*,int *) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int,int,struct tcphdr*) ;

struct sock *
nf_tproxy_handle_time_wait6(struct sk_buff *skb, int tproto, int thoff,
    struct net *net,
    const struct in6_addr *laddr,
    const __be16 lport,
    struct sock *sk)
{
 const struct ipv6hdr *iph = ipv6_hdr(skb);
 struct tcphdr _hdr, *hp;

 hp = skb_header_pointer(skb, thoff, sizeof(_hdr), &_hdr);
 if (hp == ((void*)0)) {
  inet_twsk_put(inet_twsk(sk));
  return ((void*)0);
 }

 if (hp->syn && !hp->rst && !hp->ack && !hp->fin) {


  struct sock *sk2;

  sk2 = nf_tproxy_get_sock_v6(net, skb, thoff, tproto,
         &iph->saddr,
         nf_tproxy_laddr6(skb, laddr, &iph->daddr),
         hp->source,
         lport ? lport : hp->dest,
         skb->dev, NF_TPROXY_LOOKUP_LISTENER);
  if (sk2) {
   inet_twsk_deschedule_put(inet_twsk(sk));
   sk = sk2;
  }
 }

 return sk;
}
