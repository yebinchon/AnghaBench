
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_open_file {int kn; } ;
struct cpuset {int css; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int private; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;


 struct cpuset* alloc_trial_cpuset (struct cpuset*) ;
 int cpuset_hotplug_work ;
 int cpuset_migrate_mm_wq ;
 int cpuset_rwsem ;
 struct cpuset* css_cs (int ) ;
 int css_get (int *) ;
 int css_put (int *) ;
 int flush_work (int *) ;
 int flush_workqueue (int ) ;
 int free_cpuset (struct cpuset*) ;
 int get_online_cpus () ;
 int is_cpuset_online (struct cpuset*) ;
 int kernfs_break_active_protection (int ) ;
 int kernfs_unbreak_active_protection (int ) ;
 TYPE_1__* of_cft (struct kernfs_open_file*) ;
 int of_css (struct kernfs_open_file*) ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int put_online_cpus () ;
 char* strstrip (char*) ;
 int update_cpumask (struct cpuset*,struct cpuset*,char*) ;
 int update_nodemask (struct cpuset*,struct cpuset*,char*) ;

__attribute__((used)) static ssize_t cpuset_write_resmask(struct kernfs_open_file *of,
        char *buf, size_t nbytes, loff_t off)
{
 struct cpuset *cs = css_cs(of_css(of));
 struct cpuset *trialcs;
 int retval = -ENODEV;

 buf = strstrip(buf);
 css_get(&cs->css);
 kernfs_break_active_protection(of->kn);
 flush_work(&cpuset_hotplug_work);

 get_online_cpus();
 percpu_down_write(&cpuset_rwsem);
 if (!is_cpuset_online(cs))
  goto out_unlock;

 trialcs = alloc_trial_cpuset(cs);
 if (!trialcs) {
  retval = -ENOMEM;
  goto out_unlock;
 }

 switch (of_cft(of)->private) {
 case 129:
  retval = update_cpumask(cs, trialcs, buf);
  break;
 case 128:
  retval = update_nodemask(cs, trialcs, buf);
  break;
 default:
  retval = -EINVAL;
  break;
 }

 free_cpuset(trialcs);
out_unlock:
 percpu_up_write(&cpuset_rwsem);
 put_online_cpus();
 kernfs_unbreak_active_protection(of->kn);
 css_put(&cs->css);
 flush_workqueue(cpuset_migrate_mm_wq);
 return retval ?: nbytes;
}
