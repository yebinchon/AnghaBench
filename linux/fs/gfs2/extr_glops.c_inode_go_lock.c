
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_wait; int sd_trunc_lock; int sd_trunc_list; } ;
struct gfs2_inode {int i_diskflags; int i_trunc_list; int i_inode; int i_flags; } ;
struct gfs2_holder {int gh_flags; scalar_t__ gh_state; struct gfs2_glock* gh_gl; } ;
struct TYPE_2__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_state; struct gfs2_inode* gl_object; TYPE_1__ gl_name; } ;


 int GFS2_DIF_TRUNC_IN_PROG ;
 int GIF_INVALID ;
 int GL_SKIP ;
 scalar_t__ LM_ST_DEFERRED ;
 scalar_t__ LM_ST_EXCLUSIVE ;
 int gfs2_inode_refresh (struct gfs2_inode*) ;
 int inode_dio_wait (int *) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int inode_go_lock(struct gfs2_holder *gh)
{
 struct gfs2_glock *gl = gh->gh_gl;
 struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
 struct gfs2_inode *ip = gl->gl_object;
 int error = 0;

 if (!ip || (gh->gh_flags & GL_SKIP))
  return 0;

 if (test_bit(GIF_INVALID, &ip->i_flags)) {
  error = gfs2_inode_refresh(ip);
  if (error)
   return error;
 }

 if (gh->gh_state != LM_ST_DEFERRED)
  inode_dio_wait(&ip->i_inode);

 if ((ip->i_diskflags & GFS2_DIF_TRUNC_IN_PROG) &&
     (gl->gl_state == LM_ST_EXCLUSIVE) &&
     (gh->gh_state == LM_ST_EXCLUSIVE)) {
  spin_lock(&sdp->sd_trunc_lock);
  if (list_empty(&ip->i_trunc_list))
   list_add(&ip->i_trunc_list, &sdp->sd_trunc_list);
  spin_unlock(&sdp->sd_trunc_lock);
  wake_up(&sdp->sd_quota_wait);
  return 1;
 }

 return error;
}
