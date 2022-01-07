
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;


 int ECHILD ;
 int EPERM ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int MAY_NOT_BLOCK ;
 int MAY_WRITE ;
 int generic_permission (struct inode*,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int * gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 scalar_t__ gfs2_holder_initialized (struct gfs2_holder*) ;
 int gfs2_holder_mark_uninitialized (struct gfs2_holder*) ;

int gfs2_permission(struct inode *inode, int mask)
{
 struct gfs2_inode *ip;
 struct gfs2_holder i_gh;
 int error;

 gfs2_holder_mark_uninitialized(&i_gh);
 ip = GFS2_I(inode);
 if (gfs2_glock_is_locked_by_me(ip->i_gl) == ((void*)0)) {
  if (mask & MAY_NOT_BLOCK)
   return -ECHILD;
  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &i_gh);
  if (error)
   return error;
 }

 if ((mask & MAY_WRITE) && IS_IMMUTABLE(inode))
  error = -EPERM;
 else
  error = generic_permission(inode, mask);
 if (gfs2_holder_initialized(&i_gh))
  gfs2_glock_dq_uninit(&i_gh);

 return error;
}
