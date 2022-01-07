
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freezer {int state; } ;
struct cgroup_subsys_state {int dummy; } ;


 int CGROUP_FREEZER_ONLINE ;
 int CGROUP_FREEZING ;
 int CGROUP_FREEZING_PARENT ;
 int CGROUP_FROZEN ;
 int atomic_inc (int *) ;
 struct freezer* css_freezer (struct cgroup_subsys_state*) ;
 int freezer_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct freezer* parent_freezer (struct freezer*) ;
 int system_freezing_cnt ;

__attribute__((used)) static int freezer_css_online(struct cgroup_subsys_state *css)
{
 struct freezer *freezer = css_freezer(css);
 struct freezer *parent = parent_freezer(freezer);

 mutex_lock(&freezer_mutex);

 freezer->state |= CGROUP_FREEZER_ONLINE;

 if (parent && (parent->state & CGROUP_FREEZING)) {
  freezer->state |= CGROUP_FREEZING_PARENT | CGROUP_FROZEN;
  atomic_inc(&system_freezing_cnt);
 }

 mutex_unlock(&freezer_mutex);
 return 0;
}
