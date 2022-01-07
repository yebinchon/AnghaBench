
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuset {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;
typedef int cpuset_filetype_t ;


 int CS_CPU_EXCLUSIVE ;
 int CS_MEMORY_MIGRATE ;
 int CS_MEM_EXCLUSIVE ;
 int CS_MEM_HARDWALL ;
 int CS_SCHED_LOAD_BALANCE ;
 int CS_SPREAD_PAGE ;
 int CS_SPREAD_SLAB ;
 int EINVAL ;
 int ENODEV ;
 int cpuset_memory_pressure_enabled ;
 int cpuset_rwsem ;
 struct cpuset* css_cs (struct cgroup_subsys_state*) ;
 int get_online_cpus () ;
 int is_cpuset_online (struct cpuset*) ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int put_online_cpus () ;
 int update_flag (int ,struct cpuset*,int ) ;

__attribute__((used)) static int cpuset_write_u64(struct cgroup_subsys_state *css, struct cftype *cft,
       u64 val)
{
 struct cpuset *cs = css_cs(css);
 cpuset_filetype_t type = cft->private;
 int retval = 0;

 get_online_cpus();
 percpu_down_write(&cpuset_rwsem);
 if (!is_cpuset_online(cs)) {
  retval = -ENODEV;
  goto out_unlock;
 }

 switch (type) {
 case 135:
  retval = update_flag(CS_CPU_EXCLUSIVE, cs, val);
  break;
 case 132:
  retval = update_flag(CS_MEM_EXCLUSIVE, cs, val);
  break;
 case 131:
  retval = update_flag(CS_MEM_HARDWALL, cs, val);
  break;
 case 130:
  retval = update_flag(CS_SCHED_LOAD_BALANCE, cs, val);
  break;
 case 134:
  retval = update_flag(CS_MEMORY_MIGRATE, cs, val);
  break;
 case 133:
  cpuset_memory_pressure_enabled = !!val;
  break;
 case 129:
  retval = update_flag(CS_SPREAD_PAGE, cs, val);
  break;
 case 128:
  retval = update_flag(CS_SPREAD_SLAB, cs, val);
  break;
 default:
  retval = -EINVAL;
  break;
 }
out_unlock:
 percpu_up_write(&cpuset_rwsem);
 put_online_cpus();
 return retval;
}
