
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int mem_cgroup_move_charge_write(struct cgroup_subsys_state *css,
     struct cftype *cft, u64 val)
{
 return -ENOSYS;
}
