
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tcphdr {int dummy; } ;
struct sock {int sk_state; int sk_refcnt; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
typedef enum nf_tproxy_lookup_t { ____Placeholder_nf_tproxy_lookup_t } nf_tproxy_lookup_t ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int inet_rcv_saddr; } ;


 int BUG () ;




 int TCP_ESTABLISHED ;
 int WARN_ON (int) ;
 scalar_t__ __tcp_hdrlen (struct tcphdr*) ;
 struct sock* inet_lookup_established (struct net*,int *,int const,int const,int const,int const,int ) ;
 struct sock* inet_lookup_listener (struct net*,int *,struct sk_buff*,scalar_t__,int const,int const,int const,int const,int ,int ) ;
 TYPE_1__* inet_sk (struct sock*) ;
 scalar_t__ ip_hdrlen (struct sk_buff*) ;
 int ntohl (int const) ;
 int ntohs (int const) ;
 int pr_debug (char*,int const,int ,int ,int ,int ,int const,struct sock*) ;
 int refcount_inc_not_zero (int *) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,scalar_t__,int,struct tcphdr*) ;
 int sock_put (struct sock*) ;
 int tcp_hashinfo ;
 struct sock* udp4_lib_lookup (struct net*,int const,int const,int const,int const,int ) ;

struct sock *
nf_tproxy_get_sock_v4(struct net *net, struct sk_buff *skb,
        const u8 protocol,
        const __be32 saddr, const __be32 daddr,
        const __be16 sport, const __be16 dport,
        const struct net_device *in,
        const enum nf_tproxy_lookup_t lookup_type)
{
 struct sock *sk;

 switch (protocol) {
 case 131: {
  struct tcphdr _hdr, *hp;

  hp = skb_header_pointer(skb, ip_hdrlen(skb),
     sizeof(struct tcphdr), &_hdr);
  if (hp == ((void*)0))
   return ((void*)0);

  switch (lookup_type) {
  case 128:
   sk = inet_lookup_listener(net, &tcp_hashinfo, skb,
          ip_hdrlen(skb) +
            __tcp_hdrlen(hp),
          saddr, sport,
          daddr, dport,
          in->ifindex, 0);

   if (sk && !refcount_inc_not_zero(&sk->sk_refcnt))
    sk = ((void*)0);





   break;
  case 129:
   sk = inet_lookup_established(net, &tcp_hashinfo,
          saddr, sport, daddr, dport,
          in->ifindex);
   break;
  default:
   BUG();
  }
  break;
  }
 case 130:
  sk = udp4_lib_lookup(net, saddr, sport, daddr, dport,
         in->ifindex);
  if (sk) {
   int connected = (sk->sk_state == TCP_ESTABLISHED);
   int wildcard = (inet_sk(sk)->inet_rcv_saddr == 0);






   if ((lookup_type == 129 &&
         (!connected || wildcard)) ||
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

 pr_debug("tproxy socket lookup: proto %u %08x:%u -> %08x:%u, lookup type: %d, sock %p\n",
   protocol, ntohl(saddr), ntohs(sport), ntohl(daddr), ntohs(dport), lookup_type, sk);

 return sk;
}
