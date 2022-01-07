
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int limit; } ;
struct TYPE_3__ {int tx_queue_len; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 size_t TCA_GRED_DPS ;
 size_t TCA_GRED_LIMIT ;
 int TCA_GRED_MAX ;
 size_t TCA_GRED_PARMS ;
 size_t TCA_GRED_STAB ;
 int gred_change_table_def (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int gred_policy ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 int psched_mtu (TYPE_1__*) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static int gred_init(struct Qdisc *sch, struct nlattr *opt,
       struct netlink_ext_ack *extack)
{
 struct nlattr *tb[TCA_GRED_MAX + 1];
 int err;

 if (!opt)
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_GRED_MAX, opt, gred_policy,
       extack);
 if (err < 0)
  return err;

 if (tb[TCA_GRED_PARMS] || tb[TCA_GRED_STAB]) {
  NL_SET_ERR_MSG_MOD(extack,
       "virtual queue configuration can't be specified at initialization time");
  return -EINVAL;
 }

 if (tb[TCA_GRED_LIMIT])
  sch->limit = nla_get_u32(tb[TCA_GRED_LIMIT]);
 else
  sch->limit = qdisc_dev(sch)->tx_queue_len
               * psched_mtu(qdisc_dev(sch));

 return gred_change_table_def(sch, tb[TCA_GRED_DPS], extack);
}
