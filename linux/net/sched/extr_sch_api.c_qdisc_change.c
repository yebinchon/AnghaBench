
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdisc_size_table {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int flags; int rate_est; int cpu_bstats; int bstats; int stab; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change ) (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct qdisc_size_table*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct qdisc_size_table*) ;
 size_t TCA_EGRESS_BLOCK ;
 size_t TCA_INGRESS_BLOCK ;
 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 size_t TCA_STAB ;
 int TCQ_F_MQROOT ;
 int gen_replace_estimator (int *,int ,int *,int *,int ,struct nlattr*) ;
 struct qdisc_size_table* qdisc_get_stab (struct nlattr*,struct netlink_ext_ack*) ;
 int qdisc_put_stab (struct qdisc_size_table*) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;
 int rcu_assign_pointer (int ,struct qdisc_size_table*) ;
 struct qdisc_size_table* rtnl_dereference (int ) ;
 int stub1 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;

__attribute__((used)) static int qdisc_change(struct Qdisc *sch, struct nlattr **tca,
   struct netlink_ext_ack *extack)
{
 struct qdisc_size_table *ostab, *stab = ((void*)0);
 int err = 0;

 if (tca[TCA_OPTIONS]) {
  if (!sch->ops->change) {
   NL_SET_ERR_MSG(extack, "Change operation not supported by specified qdisc");
   return -EINVAL;
  }
  if (tca[TCA_INGRESS_BLOCK] || tca[TCA_EGRESS_BLOCK]) {
   NL_SET_ERR_MSG(extack, "Change of blocks is not supported");
   return -EOPNOTSUPP;
  }
  err = sch->ops->change(sch, tca[TCA_OPTIONS], extack);
  if (err)
   return err;
 }

 if (tca[TCA_STAB]) {
  stab = qdisc_get_stab(tca[TCA_STAB], extack);
  if (IS_ERR(stab))
   return PTR_ERR(stab);
 }

 ostab = rtnl_dereference(sch->stab);
 rcu_assign_pointer(sch->stab, stab);
 qdisc_put_stab(ostab);

 if (tca[TCA_RATE]) {


  if (sch->flags & TCQ_F_MQROOT)
   goto out;
  gen_replace_estimator(&sch->bstats,
          sch->cpu_bstats,
          &sch->rate_est,
          ((void*)0),
          qdisc_root_sleeping_running(sch),
          tca[TCA_RATE]);
 }
out:
 return 0;
}
