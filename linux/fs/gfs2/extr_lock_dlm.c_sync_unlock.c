
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_sync_wait; int ls_dlm; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
struct dlm_lksb {int sb_status; int sb_lkid; } ;


 int DLM_EUNLOCK ;
 int dlm_unlock (int ,int ,int ,struct dlm_lksb*,struct lm_lockstruct*) ;
 int fs_err (struct gfs2_sbd*,char*,char*,int ,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int sync_unlock(struct gfs2_sbd *sdp, struct dlm_lksb *lksb, char *name)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 int error;

 error = dlm_unlock(ls->ls_dlm, lksb->sb_lkid, 0, lksb, ls);
 if (error) {
  fs_err(sdp, "%s lkid %x error %d\n",
         name, lksb->sb_lkid, error);
  return error;
 }

 wait_for_completion(&ls->ls_sync_wait);

 if (lksb->sb_status != -DLM_EUNLOCK) {
  fs_err(sdp, "%s lkid %x status %d\n",
         name, lksb->sb_lkid, lksb->sb_status);
  return -1;
 }
 return 0;
}
