
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lm_lockstruct {int ls_control_lksb; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;


 int GFS2_CONTROL_LOCK ;
 int sync_lock (struct gfs2_sbd*,int,int ,int ,int *,char*) ;

__attribute__((used)) static int control_lock(struct gfs2_sbd *sdp, int mode, uint32_t flags)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 return sync_lock(sdp, mode, flags, GFS2_CONTROL_LOCK,
    &ls->ls_control_lksb, "control_lock");
}
