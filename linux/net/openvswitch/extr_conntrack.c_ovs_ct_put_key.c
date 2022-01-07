
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int dst; int src; } ;
struct ovs_key_ct_tuple_ipv6 {scalar_t__ member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_14__ {TYPE_6__ orig_tp; struct ovs_key_ct_tuple_ipv6 labels; int mark; } ;
struct TYPE_11__ {int dst; int src; } ;
struct TYPE_12__ {TYPE_4__ ct_orig; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_8__ {int dst; int src; } ;
struct TYPE_9__ {TYPE_1__ ct_orig; } ;
struct sw_flow_key {scalar_t__ ct_orig_proto; TYPE_7__ ct; TYPE_5__ ipv6; TYPE_3__ eth; TYPE_2__ ipv4; int ct_zone; int ct_state; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_ct_tuple_ipv4 {scalar_t__ member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef int orig ;


 int CONFIG_NF_CONNTRACK_LABELS ;
 int CONFIG_NF_CONNTRACK_MARK ;
 int CONFIG_NF_CONNTRACK_ZONES ;
 int EMSGSIZE ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IN6_ADDR_INITIALIZER (int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 int OVS_KEY_ATTR_CT_LABELS ;
 int OVS_KEY_ATTR_CT_MARK ;
 int OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4 ;
 int OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6 ;
 int OVS_KEY_ATTR_CT_STATE ;
 int OVS_KEY_ATTR_CT_ZONE ;
 scalar_t__ htons (int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct ovs_key_ct_tuple_ipv6*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

int ovs_ct_put_key(const struct sw_flow_key *swkey,
     const struct sw_flow_key *output, struct sk_buff *skb)
{
 if (nla_put_u32(skb, OVS_KEY_ATTR_CT_STATE, output->ct_state))
  return -EMSGSIZE;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_ZONES) &&
     nla_put_u16(skb, OVS_KEY_ATTR_CT_ZONE, output->ct_zone))
  return -EMSGSIZE;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_MARK) &&
     nla_put_u32(skb, OVS_KEY_ATTR_CT_MARK, output->ct.mark))
  return -EMSGSIZE;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_LABELS) &&
     nla_put(skb, OVS_KEY_ATTR_CT_LABELS, sizeof(output->ct.labels),
      &output->ct.labels))
  return -EMSGSIZE;

 if (swkey->ct_orig_proto) {
  if (swkey->eth.type == htons(ETH_P_IP)) {
   struct ovs_key_ct_tuple_ipv4 orig = {
    output->ipv4.ct_orig.src,
    output->ipv4.ct_orig.dst,
    output->ct.orig_tp.src,
    output->ct.orig_tp.dst,
    output->ct_orig_proto,
   };
   if (nla_put(skb, OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV4,
        sizeof(orig), &orig))
    return -EMSGSIZE;
  } else if (swkey->eth.type == htons(ETH_P_IPV6)) {
   struct ovs_key_ct_tuple_ipv6 orig = {
    IN6_ADDR_INITIALIZER(output->ipv6.ct_orig.src),
    IN6_ADDR_INITIALIZER(output->ipv6.ct_orig.dst),
    output->ct.orig_tp.src,
    output->ct.orig_tp.dst,
    output->ct_orig_proto,
   };
   if (nla_put(skb, OVS_KEY_ATTR_CT_ORIG_TUPLE_IPV6,
        sizeof(orig), &orig))
    return -EMSGSIZE;
  }
 }

 return 0;
}
