
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
typedef int __be16 ;


 int EINVAL ;
 int GRE_KEY ;
 int GRE_SEQ ;
 int ID_MASK ;
 size_t IFLA_GRE_COLLECT_METADATA ;
 size_t IFLA_GRE_IFLAGS ;
 size_t IFLA_GRE_IKEY ;
 size_t IFLA_GRE_OFLAGS ;
 size_t IFLA_GRE_OKEY ;
 int ipgre_tap_validate (struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;
 int nla_get_be16 (struct nlattr*) ;
 int nla_get_be32 (struct nlattr*) ;
 int ntohl (int ) ;

__attribute__((used)) static int erspan_validate(struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 __be16 flags = 0;
 int ret;

 if (!data)
  return 0;

 ret = ipgre_tap_validate(tb, data, extack);
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

 return 0;
}
