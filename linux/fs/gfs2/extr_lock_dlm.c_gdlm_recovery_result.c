
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {unsigned int ls_jid; unsigned int ls_recover_size; unsigned int* ls_recover_result; int ls_recover_spin; int ls_recover_flags; } ;
struct gfs2_sbd {int sd_control_work; struct lm_lockstruct sd_lockstruct; } ;


 int DFL_FIRST_MOUNT ;
 int DFL_NO_DLM_OPS ;
 int DFL_UNMOUNT ;
 int HZ ;
 unsigned int LM_RD_GAVEUP ;
 int fs_err (struct gfs2_sbd*,char*,unsigned int,unsigned int) ;
 int fs_info (struct gfs2_sbd*,char*,unsigned int,char*) ;
 int gfs2_control_wq ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gdlm_recovery_result(struct gfs2_sbd *sdp, unsigned int jid,
     unsigned int result)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;

 if (test_bit(DFL_NO_DLM_OPS, &ls->ls_recover_flags))
  return;


 if (jid == ls->ls_jid)
  return;

 spin_lock(&ls->ls_recover_spin);
 if (test_bit(DFL_FIRST_MOUNT, &ls->ls_recover_flags)) {
  spin_unlock(&ls->ls_recover_spin);
  return;
 }
 if (ls->ls_recover_size < jid + 1) {
  fs_err(sdp, "recovery_result jid %d short size %d\n",
         jid, ls->ls_recover_size);
  spin_unlock(&ls->ls_recover_spin);
  return;
 }

 fs_info(sdp, "recover jid %d result %s\n", jid,
  result == LM_RD_GAVEUP ? "busy" : "success");

 ls->ls_recover_result[jid] = result;





 if (!test_bit(DFL_UNMOUNT, &ls->ls_recover_flags))
  queue_delayed_work(gfs2_control_wq, &sdp->sd_control_work,
       result == LM_RD_GAVEUP ? HZ : 0);
 spin_unlock(&ls->ls_recover_spin);
}
