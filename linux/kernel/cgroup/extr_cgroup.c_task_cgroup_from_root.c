
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup_root {int dummy; } ;
struct cgroup {int dummy; } ;


 struct cgroup* cset_cgroup_from_root (int ,struct cgroup_root*) ;
 int task_css_set (struct task_struct*) ;

struct cgroup *task_cgroup_from_root(struct task_struct *task,
         struct cgroup_root *root)
{





 return cset_cgroup_from_root(task_css_set(task), root);
}
