
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __be64 ;
typedef int __be32 ;


 int EMSGSIZE ;
 int IFLA_BRIDGE_VLAN_TUNNEL_FLAGS ;
 int IFLA_BRIDGE_VLAN_TUNNEL_ID ;
 int IFLA_BRIDGE_VLAN_TUNNEL_INFO ;
 int IFLA_BRIDGE_VLAN_TUNNEL_VID ;
 int be32_to_cpu (int ) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int tunnel_id_to_key32 (int ) ;

__attribute__((used)) static int br_fill_vlan_tinfo(struct sk_buff *skb, u16 vid,
         __be64 tunnel_id, u16 flags)
{
 __be32 tid = tunnel_id_to_key32(tunnel_id);
 struct nlattr *tmap;

 tmap = nla_nest_start_noflag(skb, IFLA_BRIDGE_VLAN_TUNNEL_INFO);
 if (!tmap)
  return -EMSGSIZE;
 if (nla_put_u32(skb, IFLA_BRIDGE_VLAN_TUNNEL_ID,
   be32_to_cpu(tid)))
  goto nla_put_failure;
 if (nla_put_u16(skb, IFLA_BRIDGE_VLAN_TUNNEL_VID,
   vid))
  goto nla_put_failure;
 if (nla_put_u16(skb, IFLA_BRIDGE_VLAN_TUNNEL_FLAGS,
   flags))
  goto nla_put_failure;
 nla_nest_end(skb, tmap);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, tmap);

 return -EMSGSIZE;
}
