
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int flags; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int dummy; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int __gfs2_xattr_get (struct inode*,char const*,void*,size_t,int ) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 scalar_t__ gfs2_holder_initialized (struct gfs2_holder*) ;
 int gfs2_holder_mark_uninitialized (struct gfs2_holder*) ;

__attribute__((used)) static int gfs2_xattr_get(const struct xattr_handler *handler,
     struct dentry *unused, struct inode *inode,
     const char *name, void *buffer, size_t size)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int ret;



 if (!gfs2_glock_is_locked_by_me(ip->i_gl)) {
  ret = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
  if (ret)
   return ret;
 } else {
  gfs2_holder_mark_uninitialized(&gh);
 }
 ret = __gfs2_xattr_get(inode, name, buffer, size, handler->flags);
 if (gfs2_holder_initialized(&gh))
  gfs2_glock_dq_uninit(&gh);
 return ret;
}
