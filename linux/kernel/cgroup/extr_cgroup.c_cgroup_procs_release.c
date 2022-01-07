
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_open_file {scalar_t__ priv; } ;


 int css_task_iter_end (scalar_t__) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void cgroup_procs_release(struct kernfs_open_file *of)
{
 if (of->priv) {
  css_task_iter_end(of->priv);
  kfree(of->priv);
 }
}
