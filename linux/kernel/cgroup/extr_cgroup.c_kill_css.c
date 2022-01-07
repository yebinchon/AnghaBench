
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_subsys_state {int flags; int refcnt; } ;


 int CSS_DYING ;
 int cgroup_mutex ;
 int css_clear_dir (struct cgroup_subsys_state*) ;
 int css_get (struct cgroup_subsys_state*) ;
 int css_killed_ref_fn ;
 int lockdep_assert_held (int *) ;
 int percpu_ref_kill_and_confirm (int *,int ) ;

__attribute__((used)) static void kill_css(struct cgroup_subsys_state *css)
{
 lockdep_assert_held(&cgroup_mutex);

 if (css->flags & CSS_DYING)
  return;

 css->flags |= CSS_DYING;





 css_clear_dir(css);





 css_get(css);
 percpu_ref_kill_and_confirm(&css->refcnt, css_killed_ref_fn);
}
