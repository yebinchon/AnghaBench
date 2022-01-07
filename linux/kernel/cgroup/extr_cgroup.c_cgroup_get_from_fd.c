
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct cgroup_subsys_state {struct cgroup* cgroup; } ;
struct cgroup {int dummy; } ;


 int EBADF ;
 struct cgroup* ERR_CAST (struct cgroup_subsys_state*) ;
 struct cgroup* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct cgroup_subsys_state*) ;
 int cgroup_on_dfl (struct cgroup*) ;
 int cgroup_put (struct cgroup*) ;
 struct cgroup_subsys_state* css_tryget_online_from_dir (int ,int *) ;
 struct file* fget_raw (int) ;
 int fput (struct file*) ;

struct cgroup *cgroup_get_from_fd(int fd)
{
 struct cgroup_subsys_state *css;
 struct cgroup *cgrp;
 struct file *f;

 f = fget_raw(fd);
 if (!f)
  return ERR_PTR(-EBADF);

 css = css_tryget_online_from_dir(f->f_path.dentry, ((void*)0));
 fput(f);
 if (IS_ERR(css))
  return ERR_CAST(css);

 cgrp = css->cgroup;
 if (!cgroup_on_dfl(cgrp)) {
  cgroup_put(cgrp);
  return ERR_PTR(-EBADF);
 }

 return cgrp;
}
