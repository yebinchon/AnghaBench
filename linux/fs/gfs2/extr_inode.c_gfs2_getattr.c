
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int attributes; int attributes_mask; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_diskflags; int i_gl; } ;
struct gfs2_holder {int dummy; } ;


 int GFS2_DIF_APPENDONLY ;
 int GFS2_DIF_IMMUTABLE ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int STATX_ATTR_APPEND ;
 int STATX_ATTR_COMPRESSED ;
 int STATX_ATTR_ENCRYPTED ;
 int STATX_ATTR_IMMUTABLE ;
 int STATX_ATTR_NODUMP ;
 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int * gfs2_glock_is_locked_by_me (int ) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 scalar_t__ gfs2_holder_initialized (struct gfs2_holder*) ;
 int gfs2_holder_mark_uninitialized (struct gfs2_holder*) ;

__attribute__((used)) static int gfs2_getattr(const struct path *path, struct kstat *stat,
   u32 request_mask, unsigned int flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 u32 gfsflags;
 int error;

 gfs2_holder_mark_uninitialized(&gh);
 if (gfs2_glock_is_locked_by_me(ip->i_gl) == ((void*)0)) {
  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
  if (error)
   return error;
 }

 gfsflags = ip->i_diskflags;
 if (gfsflags & GFS2_DIF_APPENDONLY)
  stat->attributes |= STATX_ATTR_APPEND;
 if (gfsflags & GFS2_DIF_IMMUTABLE)
  stat->attributes |= STATX_ATTR_IMMUTABLE;

 stat->attributes_mask |= (STATX_ATTR_APPEND |
      STATX_ATTR_COMPRESSED |
      STATX_ATTR_ENCRYPTED |
      STATX_ATTR_IMMUTABLE |
      STATX_ATTR_NODUMP);

 generic_fillattr(inode, stat);

 if (gfs2_holder_initialized(&gh))
  gfs2_glock_dq_uninit(&gh);

 return 0;
}
