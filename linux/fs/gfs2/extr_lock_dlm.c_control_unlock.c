
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_control_lksb; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;


 int sync_unlock (struct gfs2_sbd*,int *,char*) ;

__attribute__((used)) static int control_unlock(struct gfs2_sbd *sdp)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 return sync_unlock(sdp, &ls->ls_control_lksb, "control_lock");
}
