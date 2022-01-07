
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pids_cgroup {scalar_t__ limit; } ;
struct kernfs_open_file {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef scalar_t__ int64_t ;


 int EINVAL ;
 scalar_t__ PIDS_MAX ;
 int PIDS_MAX_STR ;
 struct pids_cgroup* css_pids (struct cgroup_subsys_state*) ;
 int kstrtoll (char*,int ,scalar_t__*) ;
 struct cgroup_subsys_state* of_css (struct kernfs_open_file*) ;
 int strcmp (char*,int ) ;
 char* strstrip (char*) ;

__attribute__((used)) static ssize_t pids_max_write(struct kernfs_open_file *of, char *buf,
         size_t nbytes, loff_t off)
{
 struct cgroup_subsys_state *css = of_css(of);
 struct pids_cgroup *pids = css_pids(css);
 int64_t limit;
 int err;

 buf = strstrip(buf);
 if (!strcmp(buf, PIDS_MAX_STR)) {
  limit = PIDS_MAX;
  goto set_limit;
 }

 err = kstrtoll(buf, 0, &limit);
 if (err)
  return err;

 if (limit < 0 || limit >= PIDS_MAX)
  return -EINVAL;

set_limit:




 pids->limit = limit;
 return nbytes;
}
