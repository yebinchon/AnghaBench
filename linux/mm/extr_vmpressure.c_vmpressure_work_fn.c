
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct vmpressure {unsigned long tree_scanned; unsigned long tree_reclaimed; int sr_lock; } ;
typedef enum vmpressure_levels { ____Placeholder_vmpressure_levels } vmpressure_levels ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmpressure_calc_level (unsigned long,unsigned long) ;
 scalar_t__ vmpressure_event (struct vmpressure*,int,int,int) ;
 struct vmpressure* vmpressure_parent (struct vmpressure*) ;
 struct vmpressure* work_to_vmpressure (struct work_struct*) ;

__attribute__((used)) static void vmpressure_work_fn(struct work_struct *work)
{
 struct vmpressure *vmpr = work_to_vmpressure(work);
 unsigned long scanned;
 unsigned long reclaimed;
 enum vmpressure_levels level;
 bool ancestor = 0;
 bool signalled = 0;

 spin_lock(&vmpr->sr_lock);
 scanned = vmpr->tree_scanned;
 if (!scanned) {
  spin_unlock(&vmpr->sr_lock);
  return;
 }

 reclaimed = vmpr->tree_reclaimed;
 vmpr->tree_scanned = 0;
 vmpr->tree_reclaimed = 0;
 spin_unlock(&vmpr->sr_lock);

 level = vmpressure_calc_level(scanned, reclaimed);

 do {
  if (vmpressure_event(vmpr, level, ancestor, signalled))
   signalled = 1;
  ancestor = 1;
 } while ((vmpr = vmpressure_parent(vmpr)));
}
