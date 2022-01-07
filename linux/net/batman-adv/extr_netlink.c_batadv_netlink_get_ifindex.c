
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;


 int GENL_HDRLEN ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr const*,int ,int) ;

int
batadv_netlink_get_ifindex(const struct nlmsghdr *nlh, int attrtype)
{
 struct nlattr *attr = nlmsg_find_attr(nlh, GENL_HDRLEN, attrtype);

 return (attr && nla_len(attr) == sizeof(u32)) ? nla_get_u32(attr) : 0;
}
