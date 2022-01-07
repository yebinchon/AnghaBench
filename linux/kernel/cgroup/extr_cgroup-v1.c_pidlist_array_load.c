
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct css_task_iter {int dummy; } ;
struct cgroup_pidlist {int* list; int length; } ;
struct cgroup {int self; int pidlist_mutex; } ;
typedef int pid_t ;
typedef enum cgroup_filetype { ____Placeholder_cgroup_filetype } cgroup_filetype ;


 int CGROUP_FILE_PROCS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct cgroup_pidlist* cgroup_pidlist_find_create (struct cgroup*,int) ;
 int cgroup_task_count (struct cgroup*) ;
 int cmppid ;
 int css_task_iter_end (struct css_task_iter*) ;
 struct task_struct* css_task_iter_next (struct css_task_iter*) ;
 int css_task_iter_start (int *,int ,struct css_task_iter*) ;
 int kvfree (int*) ;
 int* kvmalloc_array (int,int,int ) ;
 int lockdep_assert_held (int *) ;
 int pidlist_uniq (int*,int) ;
 int sort (int*,int,int,int ,int *) ;
 int task_pid_vnr (struct task_struct*) ;
 int task_tgid_vnr (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pidlist_array_load(struct cgroup *cgrp, enum cgroup_filetype type,
         struct cgroup_pidlist **lp)
{
 pid_t *array;
 int length;
 int pid, n = 0;
 struct css_task_iter it;
 struct task_struct *tsk;
 struct cgroup_pidlist *l;

 lockdep_assert_held(&cgrp->pidlist_mutex);







 length = cgroup_task_count(cgrp);
 array = kvmalloc_array(length, sizeof(pid_t), GFP_KERNEL);
 if (!array)
  return -ENOMEM;

 css_task_iter_start(&cgrp->self, 0, &it);
 while ((tsk = css_task_iter_next(&it))) {
  if (unlikely(n == length))
   break;

  if (type == CGROUP_FILE_PROCS)
   pid = task_tgid_vnr(tsk);
  else
   pid = task_pid_vnr(tsk);
  if (pid > 0)
   array[n++] = pid;
 }
 css_task_iter_end(&it);
 length = n;

 sort(array, length, sizeof(pid_t), cmppid, ((void*)0));
 if (type == CGROUP_FILE_PROCS)
  length = pidlist_uniq(array, length);

 l = cgroup_pidlist_find_create(cgrp, type);
 if (!l) {
  kvfree(array);
  return -ENOMEM;
 }


 kvfree(l->list);
 l->list = array;
 l->length = length;
 *lp = l;
 return 0;
}
