
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_open_file {int dummy; } ;
struct cpuset {int css; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EINVAL ;
 int ENODEV ;
 int PRS_DISABLED ;
 int PRS_ENABLED ;
 int cpuset_rwsem ;
 struct cpuset* css_cs (int ) ;
 int css_get (int *) ;
 int css_put (int *) ;
 int get_online_cpus () ;
 int is_cpuset_online (struct cpuset*) ;
 int of_css (struct kernfs_open_file*) ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int put_online_cpus () ;
 int strcmp (char*,char*) ;
 char* strstrip (char*) ;
 int update_prstate (struct cpuset*,int) ;

__attribute__((used)) static ssize_t sched_partition_write(struct kernfs_open_file *of, char *buf,
         size_t nbytes, loff_t off)
{
 struct cpuset *cs = css_cs(of_css(of));
 int val;
 int retval = -ENODEV;

 buf = strstrip(buf);




 if (!strcmp(buf, "root"))
  val = PRS_ENABLED;
 else if (!strcmp(buf, "member"))
  val = PRS_DISABLED;
 else
  return -EINVAL;

 css_get(&cs->css);
 get_online_cpus();
 percpu_down_write(&cpuset_rwsem);
 if (!is_cpuset_online(cs))
  goto out_unlock;

 retval = update_prstate(cs, val);
out_unlock:
 percpu_up_write(&cpuset_rwsem);
 put_online_cpus();
 css_put(&cs->css);
 return retval ?: nbytes;
}
