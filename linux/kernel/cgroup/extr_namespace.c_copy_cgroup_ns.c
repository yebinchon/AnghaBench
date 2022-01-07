
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct ucounts {int dummy; } ;
struct css_set {int dummy; } ;
struct cgroup_namespace {struct css_set* root_cset; struct ucounts* ucounts; int user_ns; } ;


 int BUG_ON (int) ;
 int CAP_SYS_ADMIN ;
 unsigned long CLONE_NEWCGROUP ;
 int ENOSPC ;
 int EPERM ;
 struct cgroup_namespace* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct cgroup_namespace*) ;
 struct cgroup_namespace* alloc_cgroup_ns () ;
 int css_set_lock ;
 int current ;
 int dec_cgroup_namespaces (struct ucounts*) ;
 int get_cgroup_ns (struct cgroup_namespace*) ;
 int get_css_set (struct css_set*) ;
 int get_user_ns (struct user_namespace*) ;
 struct ucounts* inc_cgroup_namespaces (struct user_namespace*) ;
 int ns_capable (struct user_namespace*,int ) ;
 int put_css_set (struct css_set*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct css_set* task_css_set (int ) ;

struct cgroup_namespace *copy_cgroup_ns(unsigned long flags,
     struct user_namespace *user_ns,
     struct cgroup_namespace *old_ns)
{
 struct cgroup_namespace *new_ns;
 struct ucounts *ucounts;
 struct css_set *cset;

 BUG_ON(!old_ns);

 if (!(flags & CLONE_NEWCGROUP)) {
  get_cgroup_ns(old_ns);
  return old_ns;
 }


 if (!ns_capable(user_ns, CAP_SYS_ADMIN))
  return ERR_PTR(-EPERM);

 ucounts = inc_cgroup_namespaces(user_ns);
 if (!ucounts)
  return ERR_PTR(-ENOSPC);


 spin_lock_irq(&css_set_lock);
 cset = task_css_set(current);
 get_css_set(cset);
 spin_unlock_irq(&css_set_lock);

 new_ns = alloc_cgroup_ns();
 if (IS_ERR(new_ns)) {
  put_css_set(cset);
  dec_cgroup_namespaces(ucounts);
  return new_ns;
 }

 new_ns->user_ns = get_user_ns(user_ns);
 new_ns->ucounts = ucounts;
 new_ns->root_cset = cset;

 return new_ns;
}
