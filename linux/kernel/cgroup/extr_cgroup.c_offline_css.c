
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys_state {int flags; TYPE_1__* cgroup; struct cgroup_subsys* ss; } ;
struct cgroup_subsys {size_t id; int (* css_offline ) (struct cgroup_subsys_state*) ;} ;
struct TYPE_2__ {int offline_waitq; int * subsys; } ;


 int CSS_ONLINE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int cgroup_mutex ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct cgroup_subsys_state*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void offline_css(struct cgroup_subsys_state *css)
{
 struct cgroup_subsys *ss = css->ss;

 lockdep_assert_held(&cgroup_mutex);

 if (!(css->flags & CSS_ONLINE))
  return;

 if (ss->css_offline)
  ss->css_offline(css);

 css->flags &= ~CSS_ONLINE;
 RCU_INIT_POINTER(css->cgroup->subsys[ss->id], ((void*)0));

 wake_up_all(&css->cgroup->offline_waitq);
}
