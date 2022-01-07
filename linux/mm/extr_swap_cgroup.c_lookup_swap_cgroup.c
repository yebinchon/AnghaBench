
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_cgroup_ctrl {int dummy; } ;
struct swap_cgroup {int dummy; } ;
typedef int pgoff_t ;


 struct swap_cgroup* __lookup_swap_cgroup (struct swap_cgroup_ctrl*,int ) ;
 struct swap_cgroup_ctrl* swap_cgroup_ctrl ;
 int swp_offset (int ) ;
 size_t swp_type (int ) ;

__attribute__((used)) static struct swap_cgroup *lookup_swap_cgroup(swp_entry_t ent,
     struct swap_cgroup_ctrl **ctrlp)
{
 pgoff_t offset = swp_offset(ent);
 struct swap_cgroup_ctrl *ctrl;

 ctrl = &swap_cgroup_ctrl[swp_type(ent)];
 if (ctrlp)
  *ctrlp = ctrl;
 return __lookup_swap_cgroup(ctrl, offset);
}
