
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int protocol; } ;
struct TYPE_2__ {int o_flags; int o_key; } ;
struct ip_tunnel {int o_seqno; TYPE_1__ parms; int tun_hlen; } ;
typedef int __be16 ;


 int TUNNEL_SEQ ;
 int gre_build_header (struct sk_buff*,int ,int,int ,int ,int ) ;
 int htonl (int ) ;
 int ip_tunnel_xmit (struct sk_buff*,struct net_device*,struct iphdr const*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static void __gre_xmit(struct sk_buff *skb, struct net_device *dev,
         const struct iphdr *tnl_params,
         __be16 proto)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 if (tunnel->parms.o_flags & TUNNEL_SEQ)
  tunnel->o_seqno++;


 gre_build_header(skb, tunnel->tun_hlen,
    tunnel->parms.o_flags, proto, tunnel->parms.o_key,
    htonl(tunnel->o_seqno));

 ip_tunnel_xmit(skb, dev, tnl_params, tnl_params->protocol);
}
