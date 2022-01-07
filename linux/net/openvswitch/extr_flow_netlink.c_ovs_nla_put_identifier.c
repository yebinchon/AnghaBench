
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unmasked_key; int ufid; int ufid_len; } ;
struct sw_flow {TYPE_1__ id; } ;
struct sk_buff {int dummy; } ;


 int OVS_FLOW_ATTR_KEY ;
 int OVS_FLOW_ATTR_UFID ;
 int nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ ovs_identifier_is_ufid (TYPE_1__*) ;
 int ovs_nla_put_key (int ,int ,int ,int,struct sk_buff*) ;

int ovs_nla_put_identifier(const struct sw_flow *flow, struct sk_buff *skb)
{
 if (ovs_identifier_is_ufid(&flow->id))
  return nla_put(skb, OVS_FLOW_ATTR_UFID, flow->id.ufid_len,
          flow->id.ufid);

 return ovs_nla_put_key(flow->id.unmasked_key, flow->id.unmasked_key,
          OVS_FLOW_ATTR_KEY, 0, skb);
}
