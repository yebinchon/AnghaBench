
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rb_root {int dummy; } ;
struct fq_sched_data {int fq_trees_log; struct rb_root* fq_root; } ;
struct Qdisc {int dev_queue; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rb_root RB_ROOT ;
 int __GFP_RETRY_MAYFAIL ;
 int fq_free (void*) ;
 int fq_rehash (struct fq_sched_data*,void*,int,struct rb_root*,int) ;
 struct rb_root* kvmalloc_node (int,int,int ) ;
 int netdev_queue_numa_node_read (int ) ;
 struct fq_sched_data* qdisc_priv (struct Qdisc*) ;
 int sch_tree_lock (struct Qdisc*) ;
 int sch_tree_unlock (struct Qdisc*) ;

__attribute__((used)) static int fq_resize(struct Qdisc *sch, u32 log)
{
 struct fq_sched_data *q = qdisc_priv(sch);
 struct rb_root *array;
 void *old_fq_root;
 u32 idx;

 if (q->fq_root && log == q->fq_trees_log)
  return 0;


 array = kvmalloc_node(sizeof(struct rb_root) << log, GFP_KERNEL | __GFP_RETRY_MAYFAIL,
         netdev_queue_numa_node_read(sch->dev_queue));
 if (!array)
  return -ENOMEM;

 for (idx = 0; idx < (1U << log); idx++)
  array[idx] = RB_ROOT;

 sch_tree_lock(sch);

 old_fq_root = q->fq_root;
 if (old_fq_root)
  fq_rehash(q, old_fq_root, q->fq_trees_log, array, log);

 q->fq_root = array;
 q->fq_trees_log = log;

 sch_tree_unlock(sch);

 fq_free(old_fq_root);

 return 0;
}
