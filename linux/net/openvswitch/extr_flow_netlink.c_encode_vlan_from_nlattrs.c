
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sw_flow_match {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __be16 ;
struct TYPE_5__ {int tci; int tpid; } ;
struct TYPE_4__ {int tci; int tpid; } ;
struct TYPE_6__ {TYPE_2__ cvlan; TYPE_1__ vlan; } ;


 size_t OVS_KEY_ATTR_ETHERTYPE ;
 size_t OVS_KEY_ATTR_VLAN ;
 int SW_FLOW_KEY_PUT (struct sw_flow_match*,int ,int ,int) ;
 TYPE_3__ eth ;
 scalar_t__ likely (int) ;
 int nla_get_be16 (struct nlattr const*) ;

__attribute__((used)) static int encode_vlan_from_nlattrs(struct sw_flow_match *match,
        const struct nlattr *a[],
        bool is_mask, bool inner)
{
 __be16 tci = 0;
 __be16 tpid = 0;

 if (a[OVS_KEY_ATTR_VLAN])
  tci = nla_get_be16(a[OVS_KEY_ATTR_VLAN]);

 if (a[OVS_KEY_ATTR_ETHERTYPE])
  tpid = nla_get_be16(a[OVS_KEY_ATTR_ETHERTYPE]);

 if (likely(!inner)) {
  SW_FLOW_KEY_PUT(match, eth.vlan.tpid, tpid, is_mask);
  SW_FLOW_KEY_PUT(match, eth.vlan.tci, tci, is_mask);
 } else {
  SW_FLOW_KEY_PUT(match, eth.cvlan.tpid, tpid, is_mask);
  SW_FLOW_KEY_PUT(match, eth.cvlan.tci, tci, is_mask);
 }
 return 0;
}
