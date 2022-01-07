
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;




 struct sock* inet_lookup (struct net*,int *,struct sk_buff*,int const,int const,int const,int const,int const,int ) ;
 int tcp_hashinfo ;
 struct sock* udp4_lib_lookup (struct net*,int const,int const,int const,int const,int ) ;

__attribute__((used)) static struct sock *
nf_socket_get_sock_v4(struct net *net, struct sk_buff *skb, const int doff,
        const u8 protocol,
        const __be32 saddr, const __be32 daddr,
        const __be16 sport, const __be16 dport,
        const struct net_device *in)
{
 switch (protocol) {
 case 129:
  return inet_lookup(net, &tcp_hashinfo, skb, doff,
       saddr, sport, daddr, dport,
       in->ifindex);
 case 128:
  return udp4_lib_lookup(net, saddr, sport, daddr, dport,
           in->ifindex);
 }
 return ((void*)0);
}
