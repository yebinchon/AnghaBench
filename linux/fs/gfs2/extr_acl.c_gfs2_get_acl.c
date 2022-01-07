
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;


 struct posix_acl* ERR_PTR (int) ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 struct posix_acl* __gfs2_get_acl (struct inode*,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;

struct posix_acl *gfs2_get_acl(struct inode *inode, int type)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 bool need_unlock = 0;
 struct posix_acl *acl;

 if (!gfs2_glock_is_locked_by_me(ip->i_gl)) {
  int ret = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED,
          LM_FLAG_ANY, &gh);
  if (ret)
   return ERR_PTR(ret);
  need_unlock = 1;
 }
 acl = __gfs2_get_acl(inode, type);
 if (need_unlock)
  gfs2_glock_dq_uninit(&gh);
 return acl;
}
