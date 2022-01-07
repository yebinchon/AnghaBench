
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int ns; } ;
struct cgroup_pidlist {int links; struct cgroup* owner; TYPE_1__ key; int destroy_dwork; } ;
struct cgroup {int pidlists; int pidlist_mutex; } ;
typedef enum cgroup_filetype { ____Placeholder_cgroup_filetype } cgroup_filetype ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int cgroup_pidlist_destroy_work_fn ;
 struct cgroup_pidlist* cgroup_pidlist_find (struct cgroup*,int) ;
 int current ;
 int get_pid_ns (int ) ;
 struct cgroup_pidlist* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int task_active_pid_ns (int ) ;

__attribute__((used)) static struct cgroup_pidlist *cgroup_pidlist_find_create(struct cgroup *cgrp,
      enum cgroup_filetype type)
{
 struct cgroup_pidlist *l;

 lockdep_assert_held(&cgrp->pidlist_mutex);

 l = cgroup_pidlist_find(cgrp, type);
 if (l)
  return l;


 l = kzalloc(sizeof(struct cgroup_pidlist), GFP_KERNEL);
 if (!l)
  return l;

 INIT_DELAYED_WORK(&l->destroy_dwork, cgroup_pidlist_destroy_work_fn);
 l->key.type = type;

 l->key.ns = get_pid_ns(task_active_pid_ns(current));
 l->owner = cgrp;
 list_add(&l->links, &cgrp->pidlists);
 return l;
}
