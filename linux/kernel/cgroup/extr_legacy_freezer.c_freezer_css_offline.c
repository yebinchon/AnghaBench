
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freezer {int state; } ;
struct cgroup_subsys_state {int dummy; } ;


 int CGROUP_FREEZING ;
 int atomic_dec (int *) ;
 struct freezer* css_freezer (struct cgroup_subsys_state*) ;
 int freezer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int system_freezing_cnt ;

__attribute__((used)) static void freezer_css_offline(struct cgroup_subsys_state *css)
{
 struct freezer *freezer = css_freezer(css);

 mutex_lock(&freezer_mutex);

 if (freezer->state & CGROUP_FREEZING)
  atomic_dec(&system_freezing_cnt);

 freezer->state = 0;

 mutex_unlock(&freezer_mutex);
}
