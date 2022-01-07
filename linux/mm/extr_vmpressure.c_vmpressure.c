
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmpressure {unsigned long tree_scanned; unsigned long tree_reclaimed; unsigned long scanned; unsigned long reclaimed; int sr_lock; int work; } ;
struct mem_cgroup {scalar_t__ socket_pressure; } ;
typedef int gfp_t ;
typedef enum vmpressure_levels { ____Placeholder_vmpressure_levels } vmpressure_levels ;


 scalar_t__ HZ ;
 int VMPRESSURE_LOW ;
 int __GFP_FS ;
 int __GFP_HIGHMEM ;
 int __GFP_IO ;
 int __GFP_MOVABLE ;
 scalar_t__ jiffies ;
 struct vmpressure* memcg_to_vmpressure (struct mem_cgroup*) ;
 struct mem_cgroup* root_mem_cgroup ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmpressure_calc_level (unsigned long,unsigned long) ;
 unsigned long vmpressure_win ;

void vmpressure(gfp_t gfp, struct mem_cgroup *memcg, bool tree,
  unsigned long scanned, unsigned long reclaimed)
{
 struct vmpressure *vmpr = memcg_to_vmpressure(memcg);
 if (!(gfp & (__GFP_HIGHMEM | __GFP_MOVABLE | __GFP_IO | __GFP_FS)))
  return;
 if (!scanned)
  return;

 if (tree) {
  spin_lock(&vmpr->sr_lock);
  scanned = vmpr->tree_scanned += scanned;
  vmpr->tree_reclaimed += reclaimed;
  spin_unlock(&vmpr->sr_lock);

  if (scanned < vmpressure_win)
   return;
  schedule_work(&vmpr->work);
 } else {
  enum vmpressure_levels level;


  if (!memcg || memcg == root_mem_cgroup)
   return;

  spin_lock(&vmpr->sr_lock);
  scanned = vmpr->scanned += scanned;
  reclaimed = vmpr->reclaimed += reclaimed;
  if (scanned < vmpressure_win) {
   spin_unlock(&vmpr->sr_lock);
   return;
  }
  vmpr->scanned = vmpr->reclaimed = 0;
  spin_unlock(&vmpr->sr_lock);

  level = vmpressure_calc_level(scanned, reclaimed);

  if (level > VMPRESSURE_LOW) {
   memcg->socket_pressure = jiffies + HZ;
  }
 }
}
