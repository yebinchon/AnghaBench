
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int rate; } ;
struct qdisc_rate_table {TYPE_1__ rate; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_8__ {int classid; } ;
struct cbq_class {int minidle; scalar_t__ ewma_log; scalar_t__ maxidle; scalar_t__ avpkt; struct cbq_class* tparent; struct cbq_class* share; struct cbq_class* borrow; struct qdisc_rate_table* R_tab; int weight; int allot; int quantum; struct Qdisc* qdisc; TYPE_2__ common; TYPE_4__* q; int block; int rate_est; int bstats; int filter_list; int * next_alive; } ;
struct cbq_sched_data {int hgenerator; int clhash; struct cbq_class link; } ;
struct Qdisc {int handle; int dev_queue; } ;
struct TYPE_9__ {scalar_t__ qlen; } ;
struct TYPE_10__ {TYPE_3__ q; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOSR ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 size_t TCA_CBQ_FOPT ;
 size_t TCA_CBQ_LSSOPT ;
 int TCA_CBQ_MAX ;
 size_t TCA_CBQ_OVL_STRATEGY ;
 size_t TCA_CBQ_POLICE ;
 size_t TCA_CBQ_RATE ;
 size_t TCA_CBQ_RTAB ;
 size_t TCA_CBQ_WRROPT ;
 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 scalar_t__ TC_H_MAJ (int) ;
 int TC_H_MAKE (int,int) ;
 int TC_H_ROOT ;
 int cbq_activate_class (struct cbq_class*) ;
 int cbq_adjust_levels (struct cbq_class*) ;
 struct cbq_class* cbq_class_lookup (struct cbq_sched_data*,int) ;
 int cbq_deactivate_class (struct cbq_class*) ;
 int cbq_link_class (struct cbq_class*) ;
 int cbq_opt_parse (struct nlattr**,struct nlattr*,struct netlink_ext_ack*) ;
 int cbq_rmprio (struct cbq_sched_data*,struct cbq_class*) ;
 int cbq_set_fopt (struct cbq_class*,int ) ;
 int cbq_set_lss (struct cbq_class*,int ) ;
 int cbq_set_wrr (struct cbq_class*,int ) ;
 int gen_new_estimator (int *,int *,int *,int *,int ,struct nlattr*) ;
 int gen_replace_estimator (int *,int *,int *,int *,int ,struct nlattr*) ;
 int kfree (struct cbq_class*) ;
 struct cbq_class* kzalloc (int,int ) ;
 int nla_data (struct nlattr*) ;
 TYPE_4__ noop_qdisc ;
 int pfifo_qdisc_ops ;
 int qdisc_class_hash_grow (struct Qdisc*,int *) ;
 TYPE_4__* qdisc_create_dflt (int ,int *,int,int *) ;
 struct qdisc_rate_table* qdisc_get_rtab (int ,struct nlattr*,struct netlink_ext_ack*) ;
 int qdisc_hash_add (TYPE_4__*,int) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put_rtab (struct qdisc_rate_table*) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static int
cbq_change_class(struct Qdisc *sch, u32 classid, u32 parentid, struct nlattr **tca,
   unsigned long *arg, struct netlink_ext_ack *extack)
{
 int err;
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl = (struct cbq_class *)*arg;
 struct nlattr *opt = tca[TCA_OPTIONS];
 struct nlattr *tb[TCA_CBQ_MAX + 1];
 struct cbq_class *parent;
 struct qdisc_rate_table *rtab = ((void*)0);

 err = cbq_opt_parse(tb, opt, extack);
 if (err < 0)
  return err;

 if (tb[TCA_CBQ_OVL_STRATEGY] || tb[TCA_CBQ_POLICE]) {
  NL_SET_ERR_MSG(extack, "Neither overlimit strategy nor policing attributes can be used for changing class params");
  return -EOPNOTSUPP;
 }

 if (cl) {

  if (parentid) {
   if (cl->tparent &&
       cl->tparent->common.classid != parentid) {
    NL_SET_ERR_MSG(extack, "Invalid parent id");
    return -EINVAL;
   }
   if (!cl->tparent && parentid != TC_H_ROOT) {
    NL_SET_ERR_MSG(extack, "Parent must be root");
    return -EINVAL;
   }
  }

  if (tb[TCA_CBQ_RATE]) {
   rtab = qdisc_get_rtab(nla_data(tb[TCA_CBQ_RATE]),
           tb[TCA_CBQ_RTAB], extack);
   if (rtab == ((void*)0))
    return -EINVAL;
  }

  if (tca[TCA_RATE]) {
   err = gen_replace_estimator(&cl->bstats, ((void*)0),
          &cl->rate_est,
          ((void*)0),
          qdisc_root_sleeping_running(sch),
          tca[TCA_RATE]);
   if (err) {
    NL_SET_ERR_MSG(extack, "Failed to replace specified rate estimator");
    qdisc_put_rtab(rtab);
    return err;
   }
  }


  sch_tree_lock(sch);

  if (cl->next_alive != ((void*)0))
   cbq_deactivate_class(cl);

  if (rtab) {
   qdisc_put_rtab(cl->R_tab);
   cl->R_tab = rtab;
  }

  if (tb[TCA_CBQ_LSSOPT])
   cbq_set_lss(cl, nla_data(tb[TCA_CBQ_LSSOPT]));

  if (tb[TCA_CBQ_WRROPT]) {
   cbq_rmprio(q, cl);
   cbq_set_wrr(cl, nla_data(tb[TCA_CBQ_WRROPT]));
  }

  if (tb[TCA_CBQ_FOPT])
   cbq_set_fopt(cl, nla_data(tb[TCA_CBQ_FOPT]));

  if (cl->q->q.qlen)
   cbq_activate_class(cl);

  sch_tree_unlock(sch);

  return 0;
 }

 if (parentid == TC_H_ROOT)
  return -EINVAL;

 if (!tb[TCA_CBQ_WRROPT] || !tb[TCA_CBQ_RATE] || !tb[TCA_CBQ_LSSOPT]) {
  NL_SET_ERR_MSG(extack, "One of the following attributes MUST be specified: WRR, rate or link sharing");
  return -EINVAL;
 }

 rtab = qdisc_get_rtab(nla_data(tb[TCA_CBQ_RATE]), tb[TCA_CBQ_RTAB],
         extack);
 if (rtab == ((void*)0))
  return -EINVAL;

 if (classid) {
  err = -EINVAL;
  if (TC_H_MAJ(classid ^ sch->handle) ||
      cbq_class_lookup(q, classid)) {
   NL_SET_ERR_MSG(extack, "Specified class not found");
   goto failure;
  }
 } else {
  int i;
  classid = TC_H_MAKE(sch->handle, 0x8000);

  for (i = 0; i < 0x8000; i++) {
   if (++q->hgenerator >= 0x8000)
    q->hgenerator = 1;
   if (cbq_class_lookup(q, classid|q->hgenerator) == ((void*)0))
    break;
  }
  err = -ENOSR;
  if (i >= 0x8000) {
   NL_SET_ERR_MSG(extack, "Unable to generate classid");
   goto failure;
  }
  classid = classid|q->hgenerator;
 }

 parent = &q->link;
 if (parentid) {
  parent = cbq_class_lookup(q, parentid);
  err = -EINVAL;
  if (!parent) {
   NL_SET_ERR_MSG(extack, "Failed to find parentid");
   goto failure;
  }
 }

 err = -ENOBUFS;
 cl = kzalloc(sizeof(*cl), GFP_KERNEL);
 if (cl == ((void*)0))
  goto failure;

 err = tcf_block_get(&cl->block, &cl->filter_list, sch, extack);
 if (err) {
  kfree(cl);
  return err;
 }

 if (tca[TCA_RATE]) {
  err = gen_new_estimator(&cl->bstats, ((void*)0), &cl->rate_est,
     ((void*)0),
     qdisc_root_sleeping_running(sch),
     tca[TCA_RATE]);
  if (err) {
   NL_SET_ERR_MSG(extack, "Couldn't create new estimator");
   tcf_block_put(cl->block);
   kfree(cl);
   goto failure;
  }
 }

 cl->R_tab = rtab;
 rtab = ((void*)0);
 cl->q = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops, classid,
      ((void*)0));
 if (!cl->q)
  cl->q = &noop_qdisc;
 else
  qdisc_hash_add(cl->q, 1);

 cl->common.classid = classid;
 cl->tparent = parent;
 cl->qdisc = sch;
 cl->allot = parent->allot;
 cl->quantum = cl->allot;
 cl->weight = cl->R_tab->rate.rate;

 sch_tree_lock(sch);
 cbq_link_class(cl);
 cl->borrow = cl->tparent;
 if (cl->tparent != &q->link)
  cl->share = cl->tparent;
 cbq_adjust_levels(parent);
 cl->minidle = -0x7FFFFFFF;
 cbq_set_lss(cl, nla_data(tb[TCA_CBQ_LSSOPT]));
 cbq_set_wrr(cl, nla_data(tb[TCA_CBQ_WRROPT]));
 if (cl->ewma_log == 0)
  cl->ewma_log = q->link.ewma_log;
 if (cl->maxidle == 0)
  cl->maxidle = q->link.maxidle;
 if (cl->avpkt == 0)
  cl->avpkt = q->link.avpkt;
 if (tb[TCA_CBQ_FOPT])
  cbq_set_fopt(cl, nla_data(tb[TCA_CBQ_FOPT]));
 sch_tree_unlock(sch);

 qdisc_class_hash_grow(sch, &q->clhash);

 *arg = (unsigned long)cl;
 return 0;

failure:
 qdisc_put_rtab(rtab);
 return err;
}
