
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct tc_service_curve {scalar_t__ m1; scalar_t__ m2; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_10__ {scalar_t__ classid; } ;
struct hfsc_class {int cl_flags; scalar_t__ level; TYPE_2__* qdisc; int children; int siblings; TYPE_6__ cl_common; void* cf_tree; void* vt_tree; struct hfsc_class* cl_parent; struct hfsc_sched* sched; int block; int rate_est; int bstats; int filter_list; } ;
struct hfsc_sched {int clhash; struct hfsc_class root; } ;
struct Qdisc {scalar_t__ handle; int dev_queue; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct TYPE_9__ {TYPE_1__ q; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int GFP_KERNEL ;
 int HFSC_FSC ;
 int HFSC_RSC ;
 int INIT_LIST_HEAD (int *) ;
 void* RB_ROOT ;
 size_t TCA_HFSC_FSC ;
 int TCA_HFSC_MAX ;
 size_t TCA_HFSC_RSC ;
 size_t TCA_HFSC_USC ;
 size_t TCA_OPTIONS ;
 size_t TCA_RATE ;
 scalar_t__ TC_H_MAJ (scalar_t__) ;
 scalar_t__ TC_H_ROOT ;
 int gen_new_estimator (int *,int *,int *,int *,int ,struct nlattr*) ;
 int gen_replace_estimator (int *,int *,int *,int *,int ,struct nlattr*) ;
 int hfsc_adjust_levels (struct hfsc_class*) ;
 int hfsc_change_fsc (struct hfsc_class*,struct tc_service_curve*) ;
 int hfsc_change_rsc (struct hfsc_class*,struct tc_service_curve*,int ) ;
 int hfsc_change_usc (struct hfsc_class*,struct tc_service_curve*,int ) ;
 struct hfsc_class* hfsc_find_class (scalar_t__,struct Qdisc*) ;
 int hfsc_policy ;
 int init_ed (struct hfsc_class*,int) ;
 int init_vf (struct hfsc_class*,int) ;
 int kfree (struct hfsc_class*) ;
 struct hfsc_class* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct tc_service_curve* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 TYPE_2__ noop_qdisc ;
 int pfifo_qdisc_ops ;
 int psched_get_time () ;
 int qdisc_class_hash_grow (struct Qdisc*,int *) ;
 int qdisc_class_hash_insert (int *,TYPE_6__*) ;
 TYPE_2__* qdisc_create_dflt (int ,int *,scalar_t__,int *) ;
 int qdisc_hash_add (TYPE_2__*,int) ;
 int qdisc_peek_len (TYPE_2__*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_purge_queue (TYPE_2__*) ;
 int qdisc_root_sleeping_running (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;
 int tcf_block_put (int ) ;
 int update_ed (struct hfsc_class*,int) ;
 int update_vf (struct hfsc_class*,int ,int ) ;

__attribute__((used)) static int
hfsc_change_class(struct Qdisc *sch, u32 classid, u32 parentid,
    struct nlattr **tca, unsigned long *arg,
    struct netlink_ext_ack *extack)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct hfsc_class *cl = (struct hfsc_class *)*arg;
 struct hfsc_class *parent = ((void*)0);
 struct nlattr *opt = tca[TCA_OPTIONS];
 struct nlattr *tb[TCA_HFSC_MAX + 1];
 struct tc_service_curve *rsc = ((void*)0), *fsc = ((void*)0), *usc = ((void*)0);
 u64 cur_time;
 int err;

 if (opt == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_HFSC_MAX, opt, hfsc_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (tb[TCA_HFSC_RSC]) {
  rsc = nla_data(tb[TCA_HFSC_RSC]);
  if (rsc->m1 == 0 && rsc->m2 == 0)
   rsc = ((void*)0);
 }

 if (tb[TCA_HFSC_FSC]) {
  fsc = nla_data(tb[TCA_HFSC_FSC]);
  if (fsc->m1 == 0 && fsc->m2 == 0)
   fsc = ((void*)0);
 }

 if (tb[TCA_HFSC_USC]) {
  usc = nla_data(tb[TCA_HFSC_USC]);
  if (usc->m1 == 0 && usc->m2 == 0)
   usc = ((void*)0);
 }

 if (cl != ((void*)0)) {
  int old_flags;

  if (parentid) {
   if (cl->cl_parent &&
       cl->cl_parent->cl_common.classid != parentid)
    return -EINVAL;
   if (cl->cl_parent == ((void*)0) && parentid != TC_H_ROOT)
    return -EINVAL;
  }
  cur_time = psched_get_time();

  if (tca[TCA_RATE]) {
   err = gen_replace_estimator(&cl->bstats, ((void*)0),
          &cl->rate_est,
          ((void*)0),
          qdisc_root_sleeping_running(sch),
          tca[TCA_RATE]);
   if (err)
    return err;
  }

  sch_tree_lock(sch);
  old_flags = cl->cl_flags;

  if (rsc != ((void*)0))
   hfsc_change_rsc(cl, rsc, cur_time);
  if (fsc != ((void*)0))
   hfsc_change_fsc(cl, fsc);
  if (usc != ((void*)0))
   hfsc_change_usc(cl, usc, cur_time);

  if (cl->qdisc->q.qlen != 0) {
   int len = qdisc_peek_len(cl->qdisc);

   if (cl->cl_flags & HFSC_RSC) {
    if (old_flags & HFSC_RSC)
     update_ed(cl, len);
    else
     init_ed(cl, len);
   }

   if (cl->cl_flags & HFSC_FSC) {
    if (old_flags & HFSC_FSC)
     update_vf(cl, 0, cur_time);
    else
     init_vf(cl, len);
   }
  }
  sch_tree_unlock(sch);

  return 0;
 }

 if (parentid == TC_H_ROOT)
  return -EEXIST;

 parent = &q->root;
 if (parentid) {
  parent = hfsc_find_class(parentid, sch);
  if (parent == ((void*)0))
   return -ENOENT;
 }

 if (classid == 0 || TC_H_MAJ(classid ^ sch->handle) != 0)
  return -EINVAL;
 if (hfsc_find_class(classid, sch))
  return -EEXIST;

 if (rsc == ((void*)0) && fsc == ((void*)0))
  return -EINVAL;

 cl = kzalloc(sizeof(struct hfsc_class), GFP_KERNEL);
 if (cl == ((void*)0))
  return -ENOBUFS;

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
   tcf_block_put(cl->block);
   kfree(cl);
   return err;
  }
 }

 if (rsc != ((void*)0))
  hfsc_change_rsc(cl, rsc, 0);
 if (fsc != ((void*)0))
  hfsc_change_fsc(cl, fsc);
 if (usc != ((void*)0))
  hfsc_change_usc(cl, usc, 0);

 cl->cl_common.classid = classid;
 cl->sched = q;
 cl->cl_parent = parent;
 cl->qdisc = qdisc_create_dflt(sch->dev_queue, &pfifo_qdisc_ops,
          classid, ((void*)0));
 if (cl->qdisc == ((void*)0))
  cl->qdisc = &noop_qdisc;
 else
  qdisc_hash_add(cl->qdisc, 1);
 INIT_LIST_HEAD(&cl->children);
 cl->vt_tree = RB_ROOT;
 cl->cf_tree = RB_ROOT;

 sch_tree_lock(sch);
 qdisc_class_hash_insert(&q->clhash, &cl->cl_common);
 list_add_tail(&cl->siblings, &parent->children);
 if (parent->level == 0)
  qdisc_purge_queue(parent->qdisc);
 hfsc_adjust_levels(parent);
 sch_tree_unlock(sch);

 qdisc_class_hash_grow(sch, &q->clhash);

 *arg = (unsigned long)cl;
 return 0;
}
