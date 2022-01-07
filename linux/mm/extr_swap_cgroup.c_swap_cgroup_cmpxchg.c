
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_cgroup_ctrl {int lock; } ;
struct swap_cgroup {unsigned short id; } ;


 struct swap_cgroup* lookup_swap_cgroup (int ,struct swap_cgroup_ctrl**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned short swap_cgroup_cmpxchg(swp_entry_t ent,
     unsigned short old, unsigned short new)
{
 struct swap_cgroup_ctrl *ctrl;
 struct swap_cgroup *sc;
 unsigned long flags;
 unsigned short retval;

 sc = lookup_swap_cgroup(ent, &ctrl);

 spin_lock_irqsave(&ctrl->lock, flags);
 retval = sc->id;
 if (retval == old)
  sc->id = new;
 else
  retval = 0;
 spin_unlock_irqrestore(&ctrl->lock, flags);
 return retval;
}
