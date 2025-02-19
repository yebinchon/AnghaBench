
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_action_ops {scalar_t__ (* lookup ) (struct net*,struct tc_action**,int) ;int owner; } ;
struct tc_action {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef int index ;


 int EINVAL ;
 int ENOENT ;
 struct tc_action* ERR_PTR (int) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 size_t TCA_ACT_INDEX ;
 size_t TCA_ACT_KIND ;
 int TCA_ACT_MAX ;
 int module_put (int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 scalar_t__ stub1 (struct net*,struct tc_action**,int) ;
 struct tc_action_ops* tc_lookup_action (struct nlattr*) ;
 int tcf_action_policy ;

__attribute__((used)) static struct tc_action *tcf_action_get_1(struct net *net, struct nlattr *nla,
       struct nlmsghdr *n, u32 portid,
       struct netlink_ext_ack *extack)
{
 struct nlattr *tb[TCA_ACT_MAX + 1];
 const struct tc_action_ops *ops;
 struct tc_action *a;
 int index;
 int err;

 err = nla_parse_nested_deprecated(tb, TCA_ACT_MAX, nla,
       tcf_action_policy, extack);
 if (err < 0)
  goto err_out;

 err = -EINVAL;
 if (tb[TCA_ACT_INDEX] == ((void*)0) ||
     nla_len(tb[TCA_ACT_INDEX]) < sizeof(index)) {
  NL_SET_ERR_MSG(extack, "Invalid TC action index value");
  goto err_out;
 }
 index = nla_get_u32(tb[TCA_ACT_INDEX]);

 err = -EINVAL;
 ops = tc_lookup_action(tb[TCA_ACT_KIND]);
 if (!ops) {
  NL_SET_ERR_MSG(extack, "Specified TC action kind not found");
  goto err_out;
 }
 err = -ENOENT;
 if (ops->lookup(net, &a, index) == 0) {
  NL_SET_ERR_MSG(extack, "TC action with specified index not found");
  goto err_mod;
 }

 module_put(ops->owner);
 return a;

err_mod:
 module_put(ops->owner);
err_out:
 return ERR_PTR(err);
}
