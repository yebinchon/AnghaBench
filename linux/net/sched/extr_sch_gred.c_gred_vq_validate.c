
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct gred_sched {size_t DPs; size_t red_flags; int * tab; } ;


 int EINVAL ;
 size_t GRED_VQ_RED_FLAGS ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 size_t TCA_GRED_VQ_DP ;
 size_t TCA_GRED_VQ_FLAGS ;
 int TCA_GRED_VQ_MAX ;
 int gred_vq_policy ;
 size_t nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int gred_vq_validate(struct gred_sched *table, u32 cdp,
       const struct nlattr *entry,
       struct netlink_ext_ack *extack)
{
 struct nlattr *tb[TCA_GRED_VQ_MAX + 1];
 int err;
 u32 dp;

 err = nla_parse_nested_deprecated(tb, TCA_GRED_VQ_MAX, entry,
       gred_vq_policy, extack);
 if (err < 0)
  return err;

 if (!tb[TCA_GRED_VQ_DP]) {
  NL_SET_ERR_MSG_MOD(extack, "Virtual queue with no index specified");
  return -EINVAL;
 }
 dp = nla_get_u32(tb[TCA_GRED_VQ_DP]);
 if (dp >= table->DPs) {
  NL_SET_ERR_MSG_MOD(extack, "Virtual queue with index out of bounds");
  return -EINVAL;
 }
 if (dp != cdp && !table->tab[dp]) {
  NL_SET_ERR_MSG_MOD(extack, "Virtual queue not yet instantiated");
  return -EINVAL;
 }

 if (tb[TCA_GRED_VQ_FLAGS]) {
  u32 red_flags = nla_get_u32(tb[TCA_GRED_VQ_FLAGS]);

  if (table->red_flags && table->red_flags != red_flags) {
   NL_SET_ERR_MSG_MOD(extack, "can't change per-virtual queue RED flags when per-Qdisc flags are used");
   return -EINVAL;
  }
  if (red_flags & ~GRED_VQ_RED_FLAGS) {
   NL_SET_ERR_MSG_MOD(extack,
        "invalid RED flags specified");
   return -EINVAL;
  }
 }

 return 0;
}
