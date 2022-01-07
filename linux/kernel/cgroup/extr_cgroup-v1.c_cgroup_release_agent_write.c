
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_open_file {int kn; } ;
struct cgroup {TYPE_1__* root; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int release_agent_path; } ;


 int BUILD_BUG_ON (int) ;
 size_t ENODEV ;
 int PATH_MAX ;
 struct cgroup* cgroup_kn_lock_live (int ,int) ;
 int cgroup_kn_unlock (int ) ;
 int release_agent_path_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlcpy (int ,int ,int) ;
 int strstrip (char*) ;

__attribute__((used)) static ssize_t cgroup_release_agent_write(struct kernfs_open_file *of,
       char *buf, size_t nbytes, loff_t off)
{
 struct cgroup *cgrp;

 BUILD_BUG_ON(sizeof(cgrp->root->release_agent_path) < PATH_MAX);

 cgrp = cgroup_kn_lock_live(of->kn, 0);
 if (!cgrp)
  return -ENODEV;
 spin_lock(&release_agent_path_lock);
 strlcpy(cgrp->root->release_agent_path, strstrip(buf),
  sizeof(cgrp->root->release_agent_path));
 spin_unlock(&release_agent_path_lock);
 cgroup_kn_unlock(of->kn);
 return nbytes;
}
