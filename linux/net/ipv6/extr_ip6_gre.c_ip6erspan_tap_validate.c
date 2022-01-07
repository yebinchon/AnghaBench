
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
typedef int __be16 ;


 int DIR_MASK ;
 int DIR_OFFSET ;
 int EINVAL ;
 int GRE_KEY ;
 int GRE_SEQ ;
 int HWID_MASK ;
 int HWID_OFFSET ;
 int ID_MASK ;
 size_t IFLA_GRE_COLLECT_METADATA ;
 size_t IFLA_GRE_ERSPAN_DIR ;
 size_t IFLA_GRE_ERSPAN_HWID ;
 size_t IFLA_GRE_ERSPAN_INDEX ;
 size_t IFLA_GRE_ERSPAN_VER ;
 size_t IFLA_GRE_IFLAGS ;
 size_t IFLA_GRE_IKEY ;
 size_t IFLA_GRE_OFLAGS ;
 size_t IFLA_GRE_OKEY ;
 int INDEX_MASK ;
 int ip6gre_tap_validate (struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;
 int nla_get_be16 (struct nlattr*) ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int ntohl (int ) ;

__attribute__((used)) static int ip6erspan_tap_validate(struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 __be16 flags = 0;
 int ret, ver = 0;

 if (!data)
  return 0;

 ret = ip6gre_tap_validate(tb, data, extack);
 if (ret)
  return ret;


 if (data[IFLA_GRE_OFLAGS])
  flags |= nla_get_be16(data[IFLA_GRE_OFLAGS]);
 if (data[IFLA_GRE_IFLAGS])
  flags |= nla_get_be16(data[IFLA_GRE_IFLAGS]);
 if (!data[IFLA_GRE_COLLECT_METADATA] &&
     flags != (GRE_SEQ | GRE_KEY))
  return -EINVAL;




 if (data[IFLA_GRE_IKEY] &&
     (ntohl(nla_get_be32(data[IFLA_GRE_IKEY])) & ~ID_MASK))
  return -EINVAL;

 if (data[IFLA_GRE_OKEY] &&
     (ntohl(nla_get_be32(data[IFLA_GRE_OKEY])) & ~ID_MASK))
  return -EINVAL;

 if (data[IFLA_GRE_ERSPAN_VER]) {
  ver = nla_get_u8(data[IFLA_GRE_ERSPAN_VER]);
  if (ver != 1 && ver != 2)
   return -EINVAL;
 }

 if (ver == 1) {
  if (data[IFLA_GRE_ERSPAN_INDEX]) {
   u32 index = nla_get_u32(data[IFLA_GRE_ERSPAN_INDEX]);

   if (index & ~INDEX_MASK)
    return -EINVAL;
  }
 } else if (ver == 2) {
  if (data[IFLA_GRE_ERSPAN_DIR]) {
   u16 dir = nla_get_u8(data[IFLA_GRE_ERSPAN_DIR]);

   if (dir & ~(DIR_MASK >> DIR_OFFSET))
    return -EINVAL;
  }

  if (data[IFLA_GRE_ERSPAN_HWID]) {
   u16 hwid = nla_get_u16(data[IFLA_GRE_ERSPAN_HWID]);

   if (hwid & ~(HWID_MASK >> HWID_OFFSET))
    return -EINVAL;
  }
 }

 return 0;
}
