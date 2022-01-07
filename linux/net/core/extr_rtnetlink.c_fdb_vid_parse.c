
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 scalar_t__ VLAN_VID_MASK ;
 scalar_t__ nla_get_u16 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;

__attribute__((used)) static int fdb_vid_parse(struct nlattr *vlan_attr, u16 *p_vid,
    struct netlink_ext_ack *extack)
{
 u16 vid = 0;

 if (vlan_attr) {
  if (nla_len(vlan_attr) != sizeof(u16)) {
   NL_SET_ERR_MSG(extack, "invalid vlan attribute size");
   return -EINVAL;
  }

  vid = nla_get_u16(vlan_attr);

  if (!vid || vid >= VLAN_VID_MASK) {
   NL_SET_ERR_MSG(extack, "invalid vlan id");
   return -EINVAL;
  }
 }
 *p_vid = vid;
 return 0;
}
