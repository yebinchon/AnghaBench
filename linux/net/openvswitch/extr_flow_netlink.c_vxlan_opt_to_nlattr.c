
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_metadata {int gbp; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int OVS_TUNNEL_KEY_ATTR_VXLAN_OPTS ;
 int OVS_VXLAN_EXT_GBP ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int vxlan_opt_to_nlattr(struct sk_buff *skb,
          const void *tun_opts, int swkey_tun_opts_len)
{
 const struct vxlan_metadata *opts = tun_opts;
 struct nlattr *nla;

 nla = nla_nest_start_noflag(skb, OVS_TUNNEL_KEY_ATTR_VXLAN_OPTS);
 if (!nla)
  return -EMSGSIZE;

 if (nla_put_u32(skb, OVS_VXLAN_EXT_GBP, opts->gbp) < 0)
  return -EMSGSIZE;

 nla_nest_end(skb, nla);
 return 0;
}
