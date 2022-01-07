
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; int dport; int sport; int type; } ;
struct __ip6_tnl_parm {int erspan_ver; int dir; int hop_limit; int encap_limit; scalar_t__ collect_md; int fwmark; int flags; int flowinfo; int raddr; int laddr; int o_key; int i_key; int i_flags; int link; int hwid; int index; int o_flags; } ;
struct ip6_tnl {TYPE_1__ encap; struct __ip6_tnl_parm parms; } ;
typedef int __be16 ;


 int EMSGSIZE ;
 int IFLA_GRE_COLLECT_METADATA ;
 int IFLA_GRE_ENCAP_DPORT ;
 int IFLA_GRE_ENCAP_FLAGS ;
 int IFLA_GRE_ENCAP_LIMIT ;
 int IFLA_GRE_ENCAP_SPORT ;
 int IFLA_GRE_ENCAP_TYPE ;
 int IFLA_GRE_ERSPAN_DIR ;
 int IFLA_GRE_ERSPAN_HWID ;
 int IFLA_GRE_ERSPAN_INDEX ;
 int IFLA_GRE_ERSPAN_VER ;
 int IFLA_GRE_FLAGS ;
 int IFLA_GRE_FLOWINFO ;
 int IFLA_GRE_FWMARK ;
 int IFLA_GRE_IFLAGS ;
 int IFLA_GRE_IKEY ;
 int IFLA_GRE_LINK ;
 int IFLA_GRE_LOCAL ;
 int IFLA_GRE_OFLAGS ;
 int IFLA_GRE_OKEY ;
 int IFLA_GRE_REMOTE ;
 int IFLA_GRE_TTL ;
 int TUNNEL_KEY ;
 int gre_tnl_flags_to_gre_flags (int ) ;
 struct ip6_tnl* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_in6_addr (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int ip6gre_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct ip6_tnl *t = netdev_priv(dev);
 struct __ip6_tnl_parm *p = &t->parms;
 __be16 o_flags = p->o_flags;

 if (p->erspan_ver == 1 || p->erspan_ver == 2) {
  if (!p->collect_md)
   o_flags |= TUNNEL_KEY;

  if (nla_put_u8(skb, IFLA_GRE_ERSPAN_VER, p->erspan_ver))
   goto nla_put_failure;

  if (p->erspan_ver == 1) {
   if (nla_put_u32(skb, IFLA_GRE_ERSPAN_INDEX, p->index))
    goto nla_put_failure;
  } else {
   if (nla_put_u8(skb, IFLA_GRE_ERSPAN_DIR, p->dir))
    goto nla_put_failure;
   if (nla_put_u16(skb, IFLA_GRE_ERSPAN_HWID, p->hwid))
    goto nla_put_failure;
  }
 }

 if (nla_put_u32(skb, IFLA_GRE_LINK, p->link) ||
     nla_put_be16(skb, IFLA_GRE_IFLAGS,
    gre_tnl_flags_to_gre_flags(p->i_flags)) ||
     nla_put_be16(skb, IFLA_GRE_OFLAGS,
    gre_tnl_flags_to_gre_flags(o_flags)) ||
     nla_put_be32(skb, IFLA_GRE_IKEY, p->i_key) ||
     nla_put_be32(skb, IFLA_GRE_OKEY, p->o_key) ||
     nla_put_in6_addr(skb, IFLA_GRE_LOCAL, &p->laddr) ||
     nla_put_in6_addr(skb, IFLA_GRE_REMOTE, &p->raddr) ||
     nla_put_u8(skb, IFLA_GRE_TTL, p->hop_limit) ||
     nla_put_u8(skb, IFLA_GRE_ENCAP_LIMIT, p->encap_limit) ||
     nla_put_be32(skb, IFLA_GRE_FLOWINFO, p->flowinfo) ||
     nla_put_u32(skb, IFLA_GRE_FLAGS, p->flags) ||
     nla_put_u32(skb, IFLA_GRE_FWMARK, p->fwmark))
  goto nla_put_failure;

 if (nla_put_u16(skb, IFLA_GRE_ENCAP_TYPE,
   t->encap.type) ||
     nla_put_be16(skb, IFLA_GRE_ENCAP_SPORT,
    t->encap.sport) ||
     nla_put_be16(skb, IFLA_GRE_ENCAP_DPORT,
    t->encap.dport) ||
     nla_put_u16(skb, IFLA_GRE_ENCAP_FLAGS,
   t->encap.flags))
  goto nla_put_failure;

 if (p->collect_md) {
  if (nla_put_flag(skb, IFLA_GRE_COLLECT_METADATA))
   goto nla_put_failure;
 }

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
