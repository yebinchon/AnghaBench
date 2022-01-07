
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {struct css_task_iter* priv; } ;
struct css_task_iter {int dummy; } ;
typedef int loff_t ;


 void* css_task_iter_next (struct css_task_iter*) ;

__attribute__((used)) static void *cgroup_procs_next(struct seq_file *s, void *v, loff_t *pos)
{
 struct kernfs_open_file *of = s->private;
 struct css_task_iter *it = of->priv;

 return css_task_iter_next(it);
}
