
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sw_flow_match {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __be16 ;


 int EINVAL ;
 int OVS_KEY_ATTR_ENCAP ;
 int OVS_KEY_ATTR_ETHERNET ;
 int OVS_KEY_ATTR_ETHERTYPE ;
 int OVS_KEY_ATTR_VLAN ;
 int OVS_NLERR (int,char*,char*) ;
 int VLAN_CFI_MASK ;
 scalar_t__ eth_type_vlan (int) ;
 int htons (int ) ;
 int nla_get_be16 (struct nlattr const*) ;
 scalar_t__ nla_len (struct nlattr const*) ;

__attribute__((used)) static int validate_vlan_from_nlattrs(const struct sw_flow_match *match,
          u64 key_attrs, bool inner,
          const struct nlattr **a, bool log)
{
 __be16 tci = 0;

 if (!((key_attrs & (1 << OVS_KEY_ATTR_ETHERNET)) &&
       (key_attrs & (1 << OVS_KEY_ATTR_ETHERTYPE)) &&
        eth_type_vlan(nla_get_be16(a[OVS_KEY_ATTR_ETHERTYPE])))) {

  return 0;
 }

 if (!((key_attrs & (1 << OVS_KEY_ATTR_VLAN)) &&
       (key_attrs & (1 << OVS_KEY_ATTR_ENCAP)))) {
  OVS_NLERR(log, "Invalid %s frame", (inner) ? "C-VLAN" : "VLAN");
  return -EINVAL;
 }

 if (a[OVS_KEY_ATTR_VLAN])
  tci = nla_get_be16(a[OVS_KEY_ATTR_VLAN]);

 if (!(tci & htons(VLAN_CFI_MASK))) {
  if (tci) {
   OVS_NLERR(log, "%s TCI does not have VLAN_CFI_MASK bit set.",
      (inner) ? "C-VLAN" : "VLAN");
   return -EINVAL;
  } else if (nla_len(a[OVS_KEY_ATTR_ENCAP])) {

   OVS_NLERR(log, "Truncated %s header has non-zero encap attribute.",
      (inner) ? "C-VLAN" : "VLAN");
   return -EINVAL;
  }
 }

 return 1;
}
