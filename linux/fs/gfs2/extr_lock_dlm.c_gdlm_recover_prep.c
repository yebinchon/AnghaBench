
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_recover_spin; int ls_recover_flags; int ls_recover_start; int ls_recover_block; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;


 int DFL_BLOCK_LOCKS ;
 int DFL_DLM_RECOVERY ;
 int DFL_FIRST_MOUNT ;
 int DFL_MOUNT_DONE ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gdlm_recover_prep(void *arg)
{
 struct gfs2_sbd *sdp = arg;
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;

 spin_lock(&ls->ls_recover_spin);
 ls->ls_recover_block = ls->ls_recover_start;
 set_bit(DFL_DLM_RECOVERY, &ls->ls_recover_flags);

 if (!test_bit(DFL_MOUNT_DONE, &ls->ls_recover_flags) ||
      test_bit(DFL_FIRST_MOUNT, &ls->ls_recover_flags)) {
  spin_unlock(&ls->ls_recover_spin);
  return;
 }
 set_bit(DFL_BLOCK_LOCKS, &ls->ls_recover_flags);
 spin_unlock(&ls->ls_recover_spin);
}
