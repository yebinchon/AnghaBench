
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct vtunnel_info {scalar_t__ flags; scalar_t__ vid; int tunid; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 size_t IFLA_BRIDGE_VLAN_TUNNEL_FLAGS ;
 size_t IFLA_BRIDGE_VLAN_TUNNEL_ID ;
 int IFLA_BRIDGE_VLAN_TUNNEL_MAX ;
 size_t IFLA_BRIDGE_VLAN_TUNNEL_VID ;
 scalar_t__ VLAN_VID_MASK ;
 int memset (struct vtunnel_info*,int ,int) ;
 scalar_t__ nla_get_u16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int vlan_tunnel_policy ;

int br_parse_vlan_tunnel_info(struct nlattr *attr,
         struct vtunnel_info *tinfo)
{
 struct nlattr *tb[IFLA_BRIDGE_VLAN_TUNNEL_MAX + 1];
 u32 tun_id;
 u16 vid, flags = 0;
 int err;

 memset(tinfo, 0, sizeof(*tinfo));

 err = nla_parse_nested_deprecated(tb, IFLA_BRIDGE_VLAN_TUNNEL_MAX,
       attr, vlan_tunnel_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[IFLA_BRIDGE_VLAN_TUNNEL_ID] ||
     !tb[IFLA_BRIDGE_VLAN_TUNNEL_VID])
  return -EINVAL;

 tun_id = nla_get_u32(tb[IFLA_BRIDGE_VLAN_TUNNEL_ID]);
 vid = nla_get_u16(tb[IFLA_BRIDGE_VLAN_TUNNEL_VID]);
 if (vid >= VLAN_VID_MASK)
  return -ERANGE;

 if (tb[IFLA_BRIDGE_VLAN_TUNNEL_FLAGS])
  flags = nla_get_u16(tb[IFLA_BRIDGE_VLAN_TUNNEL_FLAGS]);

 tinfo->tunid = tun_id;
 tinfo->vid = vid;
 tinfo->flags = flags;

 return 0;
}
