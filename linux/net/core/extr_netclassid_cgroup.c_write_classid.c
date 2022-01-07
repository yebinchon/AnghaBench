
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct task_struct {int files; } ;
struct css_task_iter {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cgroup_cls_state {scalar_t__ classid; } ;
struct cftype {int dummy; } ;


 int cgroup_sk_alloc_disable () ;
 int cond_resched () ;
 struct cgroup_cls_state* css_cls_state (struct cgroup_subsys_state*) ;
 int css_task_iter_end (struct css_task_iter*) ;
 struct task_struct* css_task_iter_next (struct css_task_iter*) ;
 int css_task_iter_start (struct cgroup_subsys_state*,int ,struct css_task_iter*) ;
 int iterate_fd (int ,int ,int ,void*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int update_classid_sock ;

__attribute__((used)) static int write_classid(struct cgroup_subsys_state *css, struct cftype *cft,
    u64 value)
{
 struct cgroup_cls_state *cs = css_cls_state(css);
 struct css_task_iter it;
 struct task_struct *p;

 cgroup_sk_alloc_disable();

 cs->classid = (u32)value;

 css_task_iter_start(css, 0, &it);
 while ((p = css_task_iter_next(&it))) {
  task_lock(p);
  iterate_fd(p->files, 0, update_classid_sock,
      (void *)(unsigned long)cs->classid);
  task_unlock(p);
  cond_resched();
 }
 css_task_iter_end(&it);

 return 0;
}
