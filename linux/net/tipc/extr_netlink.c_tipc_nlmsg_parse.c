
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int maxattr; } ;


 int EOPNOTSUPP ;
 int GENL_HDRLEN ;
 struct nlattr** genl_family_attrbuf (TYPE_1__*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int ,struct nlattr**,int ,int ,int *) ;
 TYPE_1__ tipc_genl_family ;
 int tipc_nl_policy ;

int tipc_nlmsg_parse(const struct nlmsghdr *nlh, struct nlattr ***attr)
{
 u32 maxattr = tipc_genl_family.maxattr;

 *attr = genl_family_attrbuf(&tipc_genl_family);
 if (!*attr)
  return -EOPNOTSUPP;

 return nlmsg_parse_deprecated(nlh, GENL_HDRLEN, *attr, maxattr,
          tipc_nl_policy, ((void*)0));
}
