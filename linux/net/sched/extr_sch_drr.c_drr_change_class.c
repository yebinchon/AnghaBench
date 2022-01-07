
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct drr_sched {int clhash; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct drr_class {TYPE_1__ common; int * qdisc; int rate_est; int bstats; scalar_t__ quantum; } ;
struct Qdisc {int dev_queue; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int TCA_DRR_MAX ;
 size_t TCA_DRR_QUANTUM ;
 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 int drr_policy ;
 int gen_replace_estimator (int *,int *,int *,int *,int ,struct nlattr*) ;
 int kfree (struct drr_class*) ;
 struct drr_class* kzalloc (int,int ) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 int noop_qdisc ;
 int pfifo_qdisc_ops ;
 scalar_t__ psched_mtu (int ) ;
 int qdisc_class_hash_grow (struct Qdisc*,int *) ;
 int qdisc_class_hash_insert (int *,TYPE_1__*) ;
 int * qdisc_create_dflt (int ,int *,scalar_t__,int *) ;
 int qdisc_dev (struct Qdisc*) ;
 int qdisc_hash_add (int *,int) ;
 struct drr_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int *) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int drr_change_class(struct Qdisc *sch, u32 classid, u32 parentid,
       struct nlattr **tca, unsigned long *arg,
       struct netlink_ext_ack *extack)
{
 struct drr_sched *q = qdisc_priv(sch);
 struct drr_class *cl = (struct drr_class *)*arg;
 struct nlattr *opt = tca[TCA_OPTIONS];
 struct nlattr *tb[TCA_DRR_MAX + 1];
 u32 quantum;
 int err;

 if (!opt) {
  NL_SET_ERR_MSG(extack, "DRR options are required for this operation");
  return -EINVAL;
 }

 err = nla_parse_nested_deprecated(tb, TCA_DRR_MAX, opt, drr_policy,
       extack);
 if (err < 0)
  return err;

 if (tb[TCA_DRR_QUANTUM]) {
  quantum = nla_get_u32(tb[TCA_DRR_QUANTUM]);
  if (quantum == 0) {
   NL_SET_ERR_MSG(extack, "Specified DRR quantum cannot be zero");
   return -EINVAL;
  }
 } else
  quantum = psched_mtu(qdisc_dev(sch));

 if (cl != ((void*)0)) {
  if (tca[TCA_RATE]) {
   err = gen_replace_estimator(&cl->bstats, ((void*)0),
          &cl->rate_est,
          ((void*)0),
          qdisc_root_sleeping_running(sch),
          tca[TCA_RATE]);
   if (err) {
    NL_SET_ERR_MSG(extack, "Failed to replace estimator");
    return err;
   }
  }

  sch_tree_lock(sch);
  if (tb[TCA_DRR_QUANTUM])
   cl->quantum = quantum;
  sch_tree_unlock(sch);

  return 0;
 }

 cl = kzalloc(sizeof(struct drr_class), GFP_KERNEL);
 if (cl == ((void*)0))
  return -ENOBUFS;

 cl->common.classid = classid;
 cl->quantum = quantum;
 cl->qdisc = qdisc_create_dflt(sch->dev_queue,
            &pfifo_qdisc_ops, classid,
            ((void*)0));
 if (cl->qdisc == ((void*)0))
  cl->qdisc = &noop_qdisc;
 else
  qdisc_hash_add(cl->qdisc, 1);

 if (tca[TCA_RATE]) {
  err = gen_replace_estimator(&cl->bstats, ((void*)0), &cl->rate_est,
         ((void*)0),
         qdisc_root_sleeping_running(sch),
         tca[TCA_RATE]);
  if (err) {
   NL_SET_ERR_MSG(extack, "Failed to replace estimator");
   qdisc_put(cl->qdisc);
   kfree(cl);
   return err;
  }
 }

 sch_tree_lock(sch);
 qdisc_class_hash_insert(&q->clhash, &cl->common);
 sch_tree_unlock(sch);

 qdisc_class_hash_grow(sch, &q->clhash);

 *arg = (unsigned long)cl;
 return 0;
}
