
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_recover_size; int ls_recover_spin; scalar_t__ ls_recover_block; scalar_t__* ls_recover_submit; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
struct dlm_slot {int slot; } ;


 int fs_err (struct gfs2_sbd*,char*,int,scalar_t__,int) ;
 int fs_info (struct gfs2_sbd*,char*,int,scalar_t__,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gdlm_recover_slot(void *arg, struct dlm_slot *slot)
{
 struct gfs2_sbd *sdp = arg;
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 int jid = slot->slot - 1;

 spin_lock(&ls->ls_recover_spin);
 if (ls->ls_recover_size < jid + 1) {
  fs_err(sdp, "recover_slot jid %d gen %u short size %d\n",
         jid, ls->ls_recover_block, ls->ls_recover_size);
  spin_unlock(&ls->ls_recover_spin);
  return;
 }

 if (ls->ls_recover_submit[jid]) {
  fs_info(sdp, "recover_slot jid %d gen %u prev %u\n",
   jid, ls->ls_recover_block, ls->ls_recover_submit[jid]);
 }
 ls->ls_recover_submit[jid] = ls->ls_recover_block;
 spin_unlock(&ls->ls_recover_spin);
}
