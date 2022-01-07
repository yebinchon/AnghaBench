
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcphdr {int dummy; } ;
struct sock {int sk_v6_rcv_saddr; int sk_state; int sk_refcnt; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef enum nf_tproxy_lookup_t { ____Placeholder_nf_tproxy_lookup_t } nf_tproxy_lookup_t ;
typedef int __be16 ;


 int BUG () ;




 int TCP_ESTABLISHED ;
 int WARN_ON (int) ;
 struct sock* __inet6_lookup_established (struct net*,int *,struct in6_addr const*,int const,struct in6_addr const*,int ,int ,int ) ;
 int __tcp_hdrlen (struct tcphdr*) ;
 struct sock* inet6_lookup_listener (struct net*,int *,struct sk_buff*,int ,struct in6_addr const*,int const,struct in6_addr const*,int ,int ,int ) ;
 int ipv6_addr_any (int *) ;
 int ntohs (int const) ;
 int pr_debug (char*,int const,struct in6_addr const*,int ,struct in6_addr const*,int ,int const,struct sock*) ;
 int refcount_inc_not_zero (int *) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int,int,struct tcphdr*) ;
 int sock_put (struct sock*) ;
 int tcp_hashinfo ;
 struct sock* udp6_lib_lookup (struct net*,struct in6_addr const*,int const,struct in6_addr const*,int const,int ) ;

struct sock *
nf_tproxy_get_sock_v6(struct net *net, struct sk_buff *skb, int thoff,
        const u8 protocol,
        const struct in6_addr *saddr, const struct in6_addr *daddr,
        const __be16 sport, const __be16 dport,
        const struct net_device *in,
        const enum nf_tproxy_lookup_t lookup_type)
{
 struct sock *sk;

 switch (protocol) {
 case 131: {
  struct tcphdr _hdr, *hp;

  hp = skb_header_pointer(skb, thoff,
     sizeof(struct tcphdr), &_hdr);
  if (hp == ((void*)0))
   return ((void*)0);

  switch (lookup_type) {
  case 128:
   sk = inet6_lookup_listener(net, &tcp_hashinfo, skb,
         thoff + __tcp_hdrlen(hp),
         saddr, sport,
         daddr, ntohs(dport),
         in->ifindex, 0);

   if (sk && !refcount_inc_not_zero(&sk->sk_refcnt))
    sk = ((void*)0);





   break;
  case 129:
   sk = __inet6_lookup_established(net, &tcp_hashinfo,
       saddr, sport, daddr, ntohs(dport),
       in->ifindex, 0);
   break;
  default:
   BUG();
  }
  break;
  }
 case 130:
  sk = udp6_lib_lookup(net, saddr, sport, daddr, dport,
         in->ifindex);
  if (sk) {
   int connected = (sk->sk_state == TCP_ESTABLISHED);
   int wildcard = ipv6_addr_any(&sk->sk_v6_rcv_saddr);






   if ((lookup_type == 129 && (!connected || wildcard)) ||
       (lookup_type == 128 && connected)) {
    sock_put(sk);
    sk = ((void*)0);
   }
  }
  break;
 default:
  WARN_ON(1);
  sk = ((void*)0);
 }

 pr_debug("tproxy socket lookup: proto %u %pI6:%u -> %pI6:%u, lookup type: %d, sock %p\n",
   protocol, saddr, ntohs(sport), daddr, ntohs(dport), lookup_type, sk);

 return sk;
}
