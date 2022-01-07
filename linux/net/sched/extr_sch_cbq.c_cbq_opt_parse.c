
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbq_wrropt {scalar_t__ priority; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int TCA_CBQ_MAX ;
 size_t TCA_CBQ_WRROPT ;
 scalar_t__ TC_CBQ_MAXPRIO ;
 int cbq_policy ;
 struct tc_cbq_wrropt* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int cbq_opt_parse(struct nlattr *tb[TCA_CBQ_MAX + 1],
    struct nlattr *opt,
    struct netlink_ext_ack *extack)
{
 int err;

 if (!opt) {
  NL_SET_ERR_MSG(extack, "CBQ options are required for this operation");
  return -EINVAL;
 }

 err = nla_parse_nested_deprecated(tb, TCA_CBQ_MAX, opt,
       cbq_policy, extack);
 if (err < 0)
  return err;

 if (tb[TCA_CBQ_WRROPT]) {
  const struct tc_cbq_wrropt *wrr = nla_data(tb[TCA_CBQ_WRROPT]);

  if (wrr->priority > TC_CBQ_MAXPRIO) {
   NL_SET_ERR_MSG(extack, "priority is bigger than TC_CBQ_MAXPRIO");
   err = -EINVAL;
  }
 }
 return err;
}
