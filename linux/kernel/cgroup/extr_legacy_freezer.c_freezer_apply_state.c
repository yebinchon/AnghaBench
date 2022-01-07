
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freezer {int state; } ;


 int CGROUP_FREEZER_ONLINE ;
 int CGROUP_FREEZING ;
 int CGROUP_FROZEN ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int freeze_cgroup (struct freezer*) ;
 int freezer_mutex ;
 int lockdep_assert_held (int *) ;
 int system_freezing_cnt ;
 int unfreeze_cgroup (struct freezer*) ;

__attribute__((used)) static void freezer_apply_state(struct freezer *freezer, bool freeze,
    unsigned int state)
{

 lockdep_assert_held(&freezer_mutex);

 if (!(freezer->state & CGROUP_FREEZER_ONLINE))
  return;

 if (freeze) {
  if (!(freezer->state & CGROUP_FREEZING))
   atomic_inc(&system_freezing_cnt);
  freezer->state |= state;
  freeze_cgroup(freezer);
 } else {
  bool was_freezing = freezer->state & CGROUP_FREEZING;

  freezer->state &= ~state;

  if (!(freezer->state & CGROUP_FREEZING)) {
   if (was_freezing)
    atomic_dec(&system_freezing_cnt);
   freezer->state &= ~CGROUP_FROZEN;
   unfreeze_cgroup(freezer);
  }
 }
}
