
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cftype {int private; } ;
typedef int s64 ;
typedef int cpuset_filetype_t ;


 int EINVAL ;
 int ENODEV ;

 int cpuset_rwsem ;
 struct cpuset* css_cs (struct cgroup_subsys_state*) ;
 int get_online_cpus () ;
 int is_cpuset_online (struct cpuset*) ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int put_online_cpus () ;
 int update_relax_domain_level (struct cpuset*,int ) ;

__attribute__((used)) static int cpuset_write_s64(struct cgroup_subsys_state *css, struct cftype *cft,
       s64 val)
{
 struct cpuset *cs = css_cs(css);
 cpuset_filetype_t type = cft->private;
 int retval = -ENODEV;

 get_online_cpus();
 percpu_down_write(&cpuset_rwsem);
 if (!is_cpuset_online(cs))
  goto out_unlock;

 switch (type) {
 case 128:
  retval = update_relax_domain_level(cs, val);
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
