
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int ttl; int tos; int protocol; int frag_off; int daddr; int saddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; int link; } ;
struct TYPE_4__ {int flags; int dport; int sport; int type; } ;
struct ip_tunnel {scalar_t__ collect_md; TYPE_2__ encap; int fwmark; struct ip_tunnel_parm parms; } ;


 int EMSGSIZE ;
 int IFLA_IPTUN_COLLECT_METADATA ;
 int IFLA_IPTUN_ENCAP_DPORT ;
 int IFLA_IPTUN_ENCAP_FLAGS ;
 int IFLA_IPTUN_ENCAP_SPORT ;
 int IFLA_IPTUN_ENCAP_TYPE ;
 int IFLA_IPTUN_FWMARK ;
 int IFLA_IPTUN_LINK ;
 int IFLA_IPTUN_LOCAL ;
 int IFLA_IPTUN_PMTUDISC ;
 int IFLA_IPTUN_PROTO ;
 int IFLA_IPTUN_REMOTE ;
 int IFLA_IPTUN_TOS ;
 int IFLA_IPTUN_TTL ;
 int IP_DF ;
 int htons (int ) ;
 struct ip_tunnel* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int ipip_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct ip_tunnel_parm *parm = &tunnel->parms;

 if (nla_put_u32(skb, IFLA_IPTUN_LINK, parm->link) ||
     nla_put_in_addr(skb, IFLA_IPTUN_LOCAL, parm->iph.saddr) ||
     nla_put_in_addr(skb, IFLA_IPTUN_REMOTE, parm->iph.daddr) ||
     nla_put_u8(skb, IFLA_IPTUN_TTL, parm->iph.ttl) ||
     nla_put_u8(skb, IFLA_IPTUN_TOS, parm->iph.tos) ||
     nla_put_u8(skb, IFLA_IPTUN_PROTO, parm->iph.protocol) ||
     nla_put_u8(skb, IFLA_IPTUN_PMTUDISC,
         !!(parm->iph.frag_off & htons(IP_DF))) ||
     nla_put_u32(skb, IFLA_IPTUN_FWMARK, tunnel->fwmark))
  goto nla_put_failure;

 if (nla_put_u16(skb, IFLA_IPTUN_ENCAP_TYPE,
   tunnel->encap.type) ||
     nla_put_be16(skb, IFLA_IPTUN_ENCAP_SPORT,
    tunnel->encap.sport) ||
     nla_put_be16(skb, IFLA_IPTUN_ENCAP_DPORT,
    tunnel->encap.dport) ||
     nla_put_u16(skb, IFLA_IPTUN_ENCAP_FLAGS,
   tunnel->encap.flags))
  goto nla_put_failure;

 if (tunnel->collect_md)
  if (nla_put_flag(skb, IFLA_IPTUN_COLLECT_METADATA))
   goto nla_put_failure;
 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
