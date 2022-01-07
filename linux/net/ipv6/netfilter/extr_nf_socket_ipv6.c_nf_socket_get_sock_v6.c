
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int __be16 ;




 struct sock* inet6_lookup (struct net*,int *,struct sk_buff*,int,struct in6_addr const*,int const,struct in6_addr const*,int const,int ) ;
 int tcp_hashinfo ;
 struct sock* udp6_lib_lookup (struct net*,struct in6_addr const*,int const,struct in6_addr const*,int const,int ) ;

__attribute__((used)) static struct sock *
nf_socket_get_sock_v6(struct net *net, struct sk_buff *skb, int doff,
        const u8 protocol,
        const struct in6_addr *saddr, const struct in6_addr *daddr,
        const __be16 sport, const __be16 dport,
        const struct net_device *in)
{
 switch (protocol) {
 case 129:
  return inet6_lookup(net, &tcp_hashinfo, skb, doff,
        saddr, sport, daddr, dport,
        in->ifindex);
 case 128:
  return udp6_lib_lookup(net, saddr, sport, daddr, dport,
           in->ifindex);
 }

 return ((void*)0);
}
