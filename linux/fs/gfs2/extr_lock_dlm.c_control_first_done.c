
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct lm_lockstruct {scalar_t__ ls_recover_start; scalar_t__ ls_recover_block; int ls_recover_size; int ls_lvb_bits; int ls_recover_spin; int ls_recover_result; int ls_recover_submit; int ls_recover_flags; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;


 int DFL_BLOCK_LOCKS ;
 int DFL_DLM_RECOVERY ;
 int DFL_FIRST_MOUNT ;
 int DFL_FIRST_MOUNT_DONE ;
 int DFL_MOUNT_DONE ;
 int DLM_LKF_CONVERT ;
 int DLM_LKF_VALBLK ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;
 int GDLM_LVB_SIZE ;
 int TASK_UNINTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 int control_lock (struct gfs2_sbd*,int ,int) ;
 int control_lvb_write (struct lm_lockstruct*,scalar_t__,int ) ;
 int control_unlock (struct gfs2_sbd*) ;
 int fs_err (struct gfs2_sbd*,char*,int,...) ;
 int fs_info (struct gfs2_sbd*,char*,scalar_t__) ;
 int memset (int ,int ,int) ;
 int mounted_lock (struct gfs2_sbd*,int ,int) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ) ;

__attribute__((used)) static int control_first_done(struct gfs2_sbd *sdp)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 uint32_t start_gen, block_gen;
 int error;

restart:
 spin_lock(&ls->ls_recover_spin);
 start_gen = ls->ls_recover_start;
 block_gen = ls->ls_recover_block;

 if (test_bit(DFL_BLOCK_LOCKS, &ls->ls_recover_flags) ||
     !test_bit(DFL_MOUNT_DONE, &ls->ls_recover_flags) ||
     !test_bit(DFL_FIRST_MOUNT, &ls->ls_recover_flags)) {

  fs_err(sdp, "control_first_done start %u block %u flags %lx\n",
         start_gen, block_gen, ls->ls_recover_flags);
  spin_unlock(&ls->ls_recover_spin);
  control_unlock(sdp);
  return -1;
 }

 if (start_gen == block_gen) {







  spin_unlock(&ls->ls_recover_spin);
  fs_info(sdp, "control_first_done wait gen %u\n", start_gen);

  wait_on_bit(&ls->ls_recover_flags, DFL_DLM_RECOVERY,
       TASK_UNINTERRUPTIBLE);
  goto restart;
 }

 clear_bit(DFL_FIRST_MOUNT, &ls->ls_recover_flags);
 set_bit(DFL_FIRST_MOUNT_DONE, &ls->ls_recover_flags);
 memset(ls->ls_recover_submit, 0, ls->ls_recover_size*sizeof(uint32_t));
 memset(ls->ls_recover_result, 0, ls->ls_recover_size*sizeof(uint32_t));
 spin_unlock(&ls->ls_recover_spin);

 memset(ls->ls_lvb_bits, 0, GDLM_LVB_SIZE);
 control_lvb_write(ls, start_gen, ls->ls_lvb_bits);

 error = mounted_lock(sdp, DLM_LOCK_PR, DLM_LKF_CONVERT);
 if (error)
  fs_err(sdp, "control_first_done mounted PR error %d\n", error);

 error = control_lock(sdp, DLM_LOCK_NL, DLM_LKF_CONVERT|DLM_LKF_VALBLK);
 if (error)
  fs_err(sdp, "control_first_done control NL error %d\n", error);

 return error;
}
