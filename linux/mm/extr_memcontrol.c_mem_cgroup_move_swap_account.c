
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct mem_cgroup {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int mem_cgroup_move_swap_account(swp_entry_t entry,
    struct mem_cgroup *from, struct mem_cgroup *to)
{
 return -EINVAL;
}
