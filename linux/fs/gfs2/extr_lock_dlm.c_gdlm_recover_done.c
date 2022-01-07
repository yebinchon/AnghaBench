
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct lm_lockstruct {int ls_jid; int ls_recover_spin; int ls_recover_flags; void* ls_recover_mount; void* ls_recover_start; } ;
struct gfs2_sbd {int sd_control_work; struct lm_lockstruct sd_lockstruct; } ;
struct dlm_slot {int dummy; } ;


 int DFL_DLM_RECOVERY ;
 int DFL_UNMOUNT ;
 int clear_bit (int ,int *) ;
 int gfs2_control_wq ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_recover_size (struct gfs2_sbd*,struct dlm_slot*,int) ;
 int smp_mb__after_atomic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void gdlm_recover_done(void *arg, struct dlm_slot *slots, int num_slots,
         int our_slot, uint32_t generation)
{
 struct gfs2_sbd *sdp = arg;
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;


 set_recover_size(sdp, slots, num_slots);

 spin_lock(&ls->ls_recover_spin);
 ls->ls_recover_start = generation;

 if (!ls->ls_recover_mount) {
  ls->ls_recover_mount = generation;
  ls->ls_jid = our_slot - 1;
 }

 if (!test_bit(DFL_UNMOUNT, &ls->ls_recover_flags))
  queue_delayed_work(gfs2_control_wq, &sdp->sd_control_work, 0);

 clear_bit(DFL_DLM_RECOVERY, &ls->ls_recover_flags);
 smp_mb__after_atomic();
 wake_up_bit(&ls->ls_recover_flags, DFL_DLM_RECOVERY);
 spin_unlock(&ls->ls_recover_spin);
}
