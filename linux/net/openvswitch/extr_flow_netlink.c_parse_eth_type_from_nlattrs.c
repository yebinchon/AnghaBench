
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sw_flow_match {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 int ETH_P_802_3_MIN ;
 size_t OVS_KEY_ATTR_ETHERTYPE ;
 int OVS_NLERR (int,char*,int ,int ) ;
 int SW_FLOW_KEY_PUT (struct sw_flow_match*,int ,int ,int) ;
 TYPE_1__ eth ;
 int eth_proto_is_802_3 (int ) ;
 int htons (int) ;
 int nla_get_be16 (struct nlattr const*) ;
 int ntohs (int ) ;

__attribute__((used)) static int parse_eth_type_from_nlattrs(struct sw_flow_match *match,
           u64 *attrs, const struct nlattr **a,
           bool is_mask, bool log)
{
 __be16 eth_type;

 eth_type = nla_get_be16(a[OVS_KEY_ATTR_ETHERTYPE]);
 if (is_mask) {

  eth_type = htons(0xffff);
 } else if (!eth_proto_is_802_3(eth_type)) {
  OVS_NLERR(log, "EtherType %x is less than min %x",
    ntohs(eth_type), ETH_P_802_3_MIN);
  return -EINVAL;
 }

 SW_FLOW_KEY_PUT(match, eth.type, eth_type, is_mask);
 *attrs &= ~(1 << OVS_KEY_ATTR_ETHERTYPE);
 return 0;
}
