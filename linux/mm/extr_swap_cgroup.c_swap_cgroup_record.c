
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_cgroup_ctrl {int lock; } ;
struct swap_cgroup {unsigned short id; } ;
typedef unsigned int pgoff_t ;


 unsigned int SC_PER_PAGE ;
 int VM_BUG_ON (int) ;
 struct swap_cgroup* __lookup_swap_cgroup (struct swap_cgroup_ctrl*,unsigned int) ;
 struct swap_cgroup* lookup_swap_cgroup (int ,struct swap_cgroup_ctrl**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int swp_offset (int ) ;

unsigned short swap_cgroup_record(swp_entry_t ent, unsigned short id,
      unsigned int nr_ents)
{
 struct swap_cgroup_ctrl *ctrl;
 struct swap_cgroup *sc;
 unsigned short old;
 unsigned long flags;
 pgoff_t offset = swp_offset(ent);
 pgoff_t end = offset + nr_ents;

 sc = lookup_swap_cgroup(ent, &ctrl);

 spin_lock_irqsave(&ctrl->lock, flags);
 old = sc->id;
 for (;;) {
  VM_BUG_ON(sc->id != old);
  sc->id = id;
  offset++;
  if (offset == end)
   break;
  if (offset % SC_PER_PAGE)
   sc++;
  else
   sc = __lookup_swap_cgroup(ctrl, offset);
 }
 spin_unlock_irqrestore(&ctrl->lock, flags);

 return old;
}
