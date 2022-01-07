
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_rindex_uptodate; int sd_rindex; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {int dummy; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int LM_ST_SHARED ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_is_locked_by_me (struct gfs2_glock*) ;
 int gfs2_glock_nq_init (struct gfs2_glock*,int ,int ,struct gfs2_holder*) ;
 int gfs2_ri_update (struct gfs2_inode*) ;

int gfs2_rindex_update(struct gfs2_sbd *sdp)
{
 struct gfs2_inode *ip = GFS2_I(sdp->sd_rindex);
 struct gfs2_glock *gl = ip->i_gl;
 struct gfs2_holder ri_gh;
 int error = 0;
 int unlock_required = 0;


 if (!sdp->sd_rindex_uptodate) {
  if (!gfs2_glock_is_locked_by_me(gl)) {
   error = gfs2_glock_nq_init(gl, LM_ST_SHARED, 0, &ri_gh);
   if (error)
    return error;
   unlock_required = 1;
  }
  if (!sdp->sd_rindex_uptodate)
   error = gfs2_ri_update(ip);
  if (unlock_required)
   gfs2_glock_dq_uninit(&ri_gh);
 }

 return error;
}
