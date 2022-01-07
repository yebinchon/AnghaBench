
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int add_ref; } ;
struct rtnl_net_dump_cb {struct net* tgt_net; struct net* ref_net; TYPE_1__ fillargs; } ;
struct rtgenmsg {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {struct netlink_ext_ack* extack; } ;
struct net {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct net*) ;
 int NETNSA_MAX ;
 int NETNSA_TARGET_NSID ;
 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct net*) ;
 int nla_get_s32 (struct nlattr*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 struct net* rtnl_get_net_ns_capable (struct sock*,int ) ;
 int rtnl_net_policy ;

__attribute__((used)) static int rtnl_valid_dump_net_req(const struct nlmsghdr *nlh, struct sock *sk,
       struct rtnl_net_dump_cb *net_cb,
       struct netlink_callback *cb)
{
 struct netlink_ext_ack *extack = cb->extack;
 struct nlattr *tb[NETNSA_MAX + 1];
 int err, i;

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(struct rtgenmsg), tb,
         NETNSA_MAX, rtnl_net_policy,
         extack);
 if (err < 0)
  return err;

 for (i = 0; i <= NETNSA_MAX; i++) {
  if (!tb[i])
   continue;

  if (i == NETNSA_TARGET_NSID) {
   struct net *net;

   net = rtnl_get_net_ns_capable(sk, nla_get_s32(tb[i]));
   if (IS_ERR(net)) {
    NL_SET_BAD_ATTR(extack, tb[i]);
    NL_SET_ERR_MSG(extack,
            "Invalid target network namespace id");
    return PTR_ERR(net);
   }
   net_cb->fillargs.add_ref = 1;
   net_cb->ref_net = net_cb->tgt_net;
   net_cb->tgt_net = net;
  } else {
   NL_SET_BAD_ATTR(extack, tb[i]);
   NL_SET_ERR_MSG(extack,
           "Unsupported attribute in dump request");
   return -EINVAL;
  }
 }

 return 0;
}
