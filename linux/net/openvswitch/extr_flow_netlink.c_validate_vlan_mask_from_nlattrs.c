
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct sw_flow_match {TYPE_4__* key; } ;
struct nlattr {int dummy; } ;
typedef int __be16 ;
struct TYPE_6__ {int tci; } ;
struct TYPE_5__ {int tci; } ;
struct TYPE_7__ {TYPE_2__ cvlan; TYPE_1__ vlan; } ;
struct TYPE_8__ {TYPE_3__ eth; } ;


 int EINVAL ;
 int OVS_KEY_ATTR_ENCAP ;
 size_t OVS_KEY_ATTR_ETHERTYPE ;
 size_t OVS_KEY_ATTR_VLAN ;
 int OVS_NLERR (int,char*,char*,...) ;
 int VLAN_CFI_MASK ;
 int htons (int) ;
 int nla_get_be16 (struct nlattr const*) ;
 int ntohs (int) ;

__attribute__((used)) static int validate_vlan_mask_from_nlattrs(const struct sw_flow_match *match,
        u64 key_attrs, bool inner,
        const struct nlattr **a, bool log)
{
 __be16 tci = 0;
 __be16 tpid = 0;
 bool encap_valid = !!(match->key->eth.vlan.tci &
         htons(VLAN_CFI_MASK));
 bool i_encap_valid = !!(match->key->eth.cvlan.tci &
    htons(VLAN_CFI_MASK));

 if (!(key_attrs & (1 << OVS_KEY_ATTR_ENCAP))) {

  return 0;
 }

 if ((!inner && !encap_valid) || (inner && !i_encap_valid)) {
  OVS_NLERR(log, "Encap mask attribute is set for non-%s frame.",
     (inner) ? "C-VLAN" : "VLAN");
  return -EINVAL;
 }

 if (a[OVS_KEY_ATTR_VLAN])
  tci = nla_get_be16(a[OVS_KEY_ATTR_VLAN]);

 if (a[OVS_KEY_ATTR_ETHERTYPE])
  tpid = nla_get_be16(a[OVS_KEY_ATTR_ETHERTYPE]);

 if (tpid != htons(0xffff)) {
  OVS_NLERR(log, "Must have an exact match on %s TPID (mask=%x).",
     (inner) ? "C-VLAN" : "VLAN", ntohs(tpid));
  return -EINVAL;
 }
 if (!(tci & htons(VLAN_CFI_MASK))) {
  OVS_NLERR(log, "%s TCI mask does not have exact match for VLAN_CFI_MASK bit.",
     (inner) ? "C-VLAN" : "VLAN");
  return -EINVAL;
 }

 return 1;
}
