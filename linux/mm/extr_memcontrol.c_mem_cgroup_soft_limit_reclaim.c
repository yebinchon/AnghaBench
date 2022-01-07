
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mem_cgroup_tree_per_node {int lock; int rb_root; } ;
struct mem_cgroup_per_node {TYPE_2__* memcg; } ;
struct TYPE_6__ {int node_id; } ;
typedef TYPE_1__ pg_data_t ;
typedef int gfp_t ;
struct TYPE_7__ {int css; } ;


 int MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int __mem_cgroup_insert_exceeded (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*,unsigned long) ;
 struct mem_cgroup_per_node* __mem_cgroup_largest_soft_limit_node (struct mem_cgroup_tree_per_node*) ;
 int __mem_cgroup_remove_exceeded (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*) ;
 int css_put (int *) ;
 struct mem_cgroup_per_node* mem_cgroup_largest_soft_limit_node (struct mem_cgroup_tree_per_node*) ;
 unsigned long mem_cgroup_soft_reclaim (TYPE_2__*,TYPE_1__*,int ,unsigned long*) ;
 unsigned long soft_limit_excess (TYPE_2__*) ;
 struct mem_cgroup_tree_per_node* soft_limit_tree_node (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

unsigned long mem_cgroup_soft_limit_reclaim(pg_data_t *pgdat, int order,
         gfp_t gfp_mask,
         unsigned long *total_scanned)
{
 unsigned long nr_reclaimed = 0;
 struct mem_cgroup_per_node *mz, *next_mz = ((void*)0);
 unsigned long reclaimed;
 int loop = 0;
 struct mem_cgroup_tree_per_node *mctz;
 unsigned long excess;
 unsigned long nr_scanned;

 if (order > 0)
  return 0;

 mctz = soft_limit_tree_node(pgdat->node_id);






 if (!mctz || RB_EMPTY_ROOT(&mctz->rb_root))
  return 0;






 do {
  if (next_mz)
   mz = next_mz;
  else
   mz = mem_cgroup_largest_soft_limit_node(mctz);
  if (!mz)
   break;

  nr_scanned = 0;
  reclaimed = mem_cgroup_soft_reclaim(mz->memcg, pgdat,
          gfp_mask, &nr_scanned);
  nr_reclaimed += reclaimed;
  *total_scanned += nr_scanned;
  spin_lock_irq(&mctz->lock);
  __mem_cgroup_remove_exceeded(mz, mctz);





  next_mz = ((void*)0);
  if (!reclaimed)
   next_mz = __mem_cgroup_largest_soft_limit_node(mctz);

  excess = soft_limit_excess(mz->memcg);
  __mem_cgroup_insert_exceeded(mz, mctz, excess);
  spin_unlock_irq(&mctz->lock);
  css_put(&mz->memcg->css);
  loop++;





  if (!nr_reclaimed &&
   (next_mz == ((void*)0) ||
   loop > MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS))
   break;
 } while (!nr_reclaimed);
 if (next_mz)
  css_put(&next_mz->memcg->css);
 return nr_reclaimed;
}
