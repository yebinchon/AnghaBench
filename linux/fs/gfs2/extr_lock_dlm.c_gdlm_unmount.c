
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int * ls_dlm; int ls_recover_spin; int ls_recover_flags; } ;
struct gfs2_sbd {int sd_control_work; struct lm_lockstruct sd_lockstruct; } ;


 int DFL_NO_DLM_OPS ;
 int DFL_UNMOUNT ;
 int dlm_release_lockspace (int *,int) ;
 int flush_delayed_work (int *) ;
 int free_recover_size (struct lm_lockstruct*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void gdlm_unmount(struct gfs2_sbd *sdp)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;

 if (test_bit(DFL_NO_DLM_OPS, &ls->ls_recover_flags))
  goto release;



 spin_lock(&ls->ls_recover_spin);
 set_bit(DFL_UNMOUNT, &ls->ls_recover_flags);
 spin_unlock(&ls->ls_recover_spin);
 flush_delayed_work(&sdp->sd_control_work);


release:
 if (ls->ls_dlm) {
  dlm_release_lockspace(ls->ls_dlm, 2);
  ls->ls_dlm = ((void*)0);
 }

 free_recover_size(ls);
}
