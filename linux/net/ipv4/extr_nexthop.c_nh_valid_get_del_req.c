
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nhmsg {scalar_t__ nh_flags; scalar_t__ nh_scope; scalar_t__ resvd; scalar_t__ nh_protocol; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;

 int NHA_MAX ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NL_SET_ERR_MSG_ATTR (struct netlink_ext_ack*,struct nlattr*,char*) ;
 int __NHA_MAX ;
 int nla_get_u32 (struct nlattr*) ;
 struct nhmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 int rtm_nh_policy ;

__attribute__((used)) static int nh_valid_get_del_req(struct nlmsghdr *nlh, u32 *id,
    struct netlink_ext_ack *extack)
{
 struct nhmsg *nhm = nlmsg_data(nlh);
 struct nlattr *tb[NHA_MAX + 1];
 int err, i;

 err = nlmsg_parse(nlh, sizeof(*nhm), tb, NHA_MAX, rtm_nh_policy,
     extack);
 if (err < 0)
  return err;

 err = -EINVAL;
 for (i = 0; i < __NHA_MAX; ++i) {
  if (!tb[i])
   continue;

  switch (i) {
  case 128:
   break;
  default:
   NL_SET_ERR_MSG_ATTR(extack, tb[i],
         "Unexpected attribute in request");
   goto out;
  }
 }
 if (nhm->nh_protocol || nhm->resvd || nhm->nh_scope || nhm->nh_flags) {
  NL_SET_ERR_MSG(extack, "Invalid values in header");
  goto out;
 }

 if (!tb[128]) {
  NL_SET_ERR_MSG(extack, "Nexthop id is missing");
  goto out;
 }

 *id = nla_get_u32(tb[128]);
 if (!(*id))
  NL_SET_ERR_MSG(extack, "Invalid nexthop id");
 else
  err = 0;
out:
 return err;
}
