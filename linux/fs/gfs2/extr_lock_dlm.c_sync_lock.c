
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lm_lockstruct {int ls_sync_wait; int ls_dlm; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
struct dlm_lksb {int sb_status; int sb_lkid; } ;


 int EAGAIN ;
 int GDLM_STRNAME_BYTES ;
 int LM_TYPE_NONDISK ;
 int dlm_lock (int ,int,struct dlm_lksb*,int ,char*,int,int ,int ,struct lm_lockstruct*,int *) ;
 int fs_err (struct gfs2_sbd*,char*,char*,int ,int ,int,int) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,int,unsigned int) ;
 int sync_wait_cb ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int sync_lock(struct gfs2_sbd *sdp, int mode, uint32_t flags,
       unsigned int num, struct dlm_lksb *lksb, char *name)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 char strname[GDLM_STRNAME_BYTES];
 int error, status;

 memset(strname, 0, GDLM_STRNAME_BYTES);
 snprintf(strname, GDLM_STRNAME_BYTES, "%8x%16x", LM_TYPE_NONDISK, num);

 error = dlm_lock(ls->ls_dlm, mode, lksb, flags,
    strname, GDLM_STRNAME_BYTES - 1,
    0, sync_wait_cb, ls, ((void*)0));
 if (error) {
  fs_err(sdp, "%s lkid %x flags %x mode %d error %d\n",
         name, lksb->sb_lkid, flags, mode, error);
  return error;
 }

 wait_for_completion(&ls->ls_sync_wait);

 status = lksb->sb_status;

 if (status && status != -EAGAIN) {
  fs_err(sdp, "%s lkid %x flags %x mode %d status %d\n",
         name, lksb->sb_lkid, flags, mode, status);
 }

 return status;
}
