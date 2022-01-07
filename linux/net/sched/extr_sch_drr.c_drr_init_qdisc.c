
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct drr_sched {int active; int clhash; int filter_list; int block; } ;
struct Qdisc {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int qdisc_class_hash_init (int *) ;
 struct drr_sched* qdisc_priv (struct Qdisc*) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int drr_init_qdisc(struct Qdisc *sch, struct nlattr *opt,
     struct netlink_ext_ack *extack)
{
 struct drr_sched *q = qdisc_priv(sch);
 int err;

 err = tcf_block_get(&q->block, &q->filter_list, sch, extack);
 if (err)
  return err;
 err = qdisc_class_hash_init(&q->clhash);
 if (err < 0)
  return err;
 INIT_LIST_HEAD(&q->active);
 return 0;
}
