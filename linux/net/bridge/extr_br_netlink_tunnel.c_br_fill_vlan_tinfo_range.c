
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tunnel_id; } ;
struct net_bridge_vlan {scalar_t__ vid; TYPE_1__ tinfo; } ;


 int BRIDGE_VLAN_INFO_RANGE_BEGIN ;
 int BRIDGE_VLAN_INFO_RANGE_END ;
 int br_fill_vlan_tinfo (struct sk_buff*,scalar_t__,int ,int ) ;

__attribute__((used)) static int br_fill_vlan_tinfo_range(struct sk_buff *skb,
        struct net_bridge_vlan *vtbegin,
        struct net_bridge_vlan *vtend)
{
 int err;

 if (vtend && (vtend->vid - vtbegin->vid) > 0) {

  err = br_fill_vlan_tinfo(skb, vtbegin->vid,
      vtbegin->tinfo.tunnel_id,
      BRIDGE_VLAN_INFO_RANGE_BEGIN);
  if (err)
   return err;

  err = br_fill_vlan_tinfo(skb, vtend->vid,
      vtend->tinfo.tunnel_id,
      BRIDGE_VLAN_INFO_RANGE_END);
  if (err)
   return err;
 } else {
  err = br_fill_vlan_tinfo(skb, vtbegin->vid,
      vtbegin->tinfo.tunnel_id,
      0);
  if (err)
   return err;
 }

 return 0;
}
