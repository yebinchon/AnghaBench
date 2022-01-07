
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct sw_flow_key {TYPE_1__ eth; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4 ;
 int OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6 ;
 int OVS_KEY_ATTR_MAX ;
 scalar_t__ htons (int ) ;
 int key_extract (struct sk_buff*,struct sw_flow_key*) ;
 int ovs_nla_get_flow_metadata (struct net*,struct nlattr const**,int,struct sw_flow_key*,int) ;
 int parse_flow_nlattrs (struct nlattr const*,struct nlattr const**,int*,int) ;
 scalar_t__ sw_flow_key_is_nd (struct sw_flow_key*) ;

int ovs_flow_key_extract_userspace(struct net *net, const struct nlattr *attr,
       struct sk_buff *skb,
       struct sw_flow_key *key, bool log)
{
 const struct nlattr *a[OVS_KEY_ATTR_MAX + 1];
 u64 attrs = 0;
 int err;

 err = parse_flow_nlattrs(attr, a, &attrs, log);
 if (err)
  return -EINVAL;


 err = ovs_nla_get_flow_metadata(net, a, attrs, key, log);
 if (err)
  return err;
 skb->protocol = key->eth.type;
 err = key_extract(skb, key);
 if (err)
  return err;





 if (attrs & (1 << OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4) &&
     key->eth.type != htons(ETH_P_IP))
  return -EINVAL;
 if (attrs & (1 << OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6) &&
     (key->eth.type != htons(ETH_P_IPV6) ||
      sw_flow_key_is_nd(key)))
  return -EINVAL;

 return 0;
}
