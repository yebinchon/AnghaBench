
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {int clockid; int tk_offset; int flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {struct ethtool_ops* ethtool_ops; } ;
struct ethtool_ts_info {int phc_index; int cmd; } ;
struct ethtool_ops {int (* get_ts_info ) (struct net_device*,struct ethtool_ts_info*) ;} ;
struct Qdisc {int dummy; } ;






 int EINVAL ;
 int ENOTSUPP ;
 int ETHTOOL_GET_TS_INFO ;
 scalar_t__ FULL_OFFLOAD_IS_ENABLED (int ) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 size_t TCA_TAPRIO_ATTR_SCHED_CLOCKID ;
 int TK_OFFS_BOOT ;
 int TK_OFFS_MAX ;
 int TK_OFFS_REAL ;
 int TK_OFFS_TAI ;
 int nla_get_s32 (struct nlattr*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 int stub1 (struct net_device*,struct ethtool_ts_info*) ;

__attribute__((used)) static int taprio_parse_clockid(struct Qdisc *sch, struct nlattr **tb,
    struct netlink_ext_ack *extack)
{
 struct taprio_sched *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);
 int err = -EINVAL;

 if (FULL_OFFLOAD_IS_ENABLED(q->flags)) {
  const struct ethtool_ops *ops = dev->ethtool_ops;
  struct ethtool_ts_info info = {
   .cmd = ETHTOOL_GET_TS_INFO,
   .phc_index = -1,
  };

  if (tb[TCA_TAPRIO_ATTR_SCHED_CLOCKID]) {
   NL_SET_ERR_MSG(extack,
           "The 'clockid' cannot be specified for full offload");
   goto out;
  }

  if (ops && ops->get_ts_info)
   err = ops->get_ts_info(dev, &info);

  if (err || info.phc_index < 0) {
   NL_SET_ERR_MSG(extack,
           "Device does not have a PTP clock");
   err = -ENOTSUPP;
   goto out;
  }
 } else if (tb[TCA_TAPRIO_ATTR_SCHED_CLOCKID]) {
  int clockid = nla_get_s32(tb[TCA_TAPRIO_ATTR_SCHED_CLOCKID]);




  if (clockid < 0 ||
      (q->clockid != -1 && q->clockid != clockid)) {
   NL_SET_ERR_MSG(extack,
           "Changing the 'clockid' of a running schedule is not supported");
   err = -ENOTSUPP;
   goto out;
  }

  switch (clockid) {
  case 129:
   q->tk_offset = TK_OFFS_REAL;
   break;
  case 130:
   q->tk_offset = TK_OFFS_MAX;
   break;
  case 131:
   q->tk_offset = TK_OFFS_BOOT;
   break;
  case 128:
   q->tk_offset = TK_OFFS_TAI;
   break;
  default:
   NL_SET_ERR_MSG(extack, "Invalid 'clockid'");
   err = -EINVAL;
   goto out;
  }

  q->clockid = clockid;
 } else {
  NL_SET_ERR_MSG(extack, "Specifying a 'clockid' is mandatory");
  goto out;
 }


 err = 0;

out:
 return err;
}
