
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm_lockstruct {int ls_mounted_lksb; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;


 int sync_unlock (struct gfs2_sbd*,int *,char*) ;

__attribute__((used)) static int mounted_unlock(struct gfs2_sbd *sdp)
{
 struct lm_lockstruct *ls = &sdp->sd_lockstruct;
 return sync_unlock(sdp, &ls->ls_mounted_lksb, "mounted_lock");
}
