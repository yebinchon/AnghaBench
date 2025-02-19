
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_table {unsigned int mask; struct udp_hslot* hash2; } ;
struct udp_hslot {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be16 ;


 scalar_t__ IS_ERR (struct sock*) ;
 struct in6_addr const in6addr_any ;
 unsigned int ipv6_portaddr_hash (struct net*,struct in6_addr const*,unsigned short) ;
 unsigned short ntohs (int ) ;
 struct sock* udp6_lib_lookup2 (struct net*,struct in6_addr const*,int ,struct in6_addr const*,unsigned short,int,int,struct udp_hslot*,struct sk_buff*) ;

struct sock *__udp6_lib_lookup(struct net *net,
          const struct in6_addr *saddr, __be16 sport,
          const struct in6_addr *daddr, __be16 dport,
          int dif, int sdif, struct udp_table *udptable,
          struct sk_buff *skb)
{
 unsigned short hnum = ntohs(dport);
 unsigned int hash2, slot2;
 struct udp_hslot *hslot2;
 struct sock *result;

 hash2 = ipv6_portaddr_hash(net, daddr, hnum);
 slot2 = hash2 & udptable->mask;
 hslot2 = &udptable->hash2[slot2];

 result = udp6_lib_lookup2(net, saddr, sport,
      daddr, hnum, dif, sdif,
      hslot2, skb);
 if (!result) {
  hash2 = ipv6_portaddr_hash(net, &in6addr_any, hnum);
  slot2 = hash2 & udptable->mask;

  hslot2 = &udptable->hash2[slot2];

  result = udp6_lib_lookup2(net, saddr, sport,
       &in6addr_any, hnum, dif, sdif,
       hslot2, skb);
 }
 if (IS_ERR(result))
  return ((void*)0);
 return result;
}
