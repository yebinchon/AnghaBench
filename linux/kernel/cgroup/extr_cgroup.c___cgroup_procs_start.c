
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {struct css_task_iter* priv; } ;
struct css_task_iter {int dummy; } ;
struct cgroup {int self; } ;
typedef int loff_t ;
struct TYPE_2__ {struct cgroup* cgroup; } ;


 int EINVAL ;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 void* cgroup_procs_next (struct seq_file*,int *,int *) ;
 int css_task_iter_end (struct css_task_iter*) ;
 int css_task_iter_start (int *,unsigned int,struct css_task_iter*) ;
 struct css_task_iter* kzalloc (int,int ) ;
 TYPE_1__* seq_css (struct seq_file*) ;

__attribute__((used)) static void *__cgroup_procs_start(struct seq_file *s, loff_t *pos,
      unsigned int iter_flags)
{
 struct kernfs_open_file *of = s->private;
 struct cgroup *cgrp = seq_css(s)->cgroup;
 struct css_task_iter *it = of->priv;





 if (!it) {
  if (WARN_ON_ONCE((*pos)++))
   return ERR_PTR(-EINVAL);

  it = kzalloc(sizeof(*it), GFP_KERNEL);
  if (!it)
   return ERR_PTR(-ENOMEM);
  of->priv = it;
  css_task_iter_start(&cgrp->self, iter_flags, it);
 } else if (!(*pos)++) {
  css_task_iter_end(it);
  css_task_iter_start(&cgrp->self, iter_flags, it);
 }

 return cgroup_procs_next(s, ((void*)0), ((void*)0));
}
