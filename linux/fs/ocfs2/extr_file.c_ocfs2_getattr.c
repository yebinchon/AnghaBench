
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct super_block {struct ocfs2_super* s_fs_info; } ;
struct path {TYPE_1__* dentry; } ;
struct ocfs2_super {int s_clustersize; } ;
struct kstat {int blocks; int size; int blksize; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {int ip_dyn_features; } ;
struct TYPE_4__ {struct super_block* d_sb; } ;


 int ENOENT ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 struct inode* d_inode (TYPE_1__*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int mlog_errno (int) ;
 int ocfs2_inode_revalidate (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

int ocfs2_getattr(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct super_block *sb = path->dentry->d_sb;
 struct ocfs2_super *osb = sb->s_fs_info;
 int err;

 err = ocfs2_inode_revalidate(path->dentry);
 if (err) {
  if (err != -ENOENT)
   mlog_errno(err);
  goto bail;
 }

 generic_fillattr(inode, stat);






 if (unlikely(OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL))
  stat->blocks += (stat->size + 511)>>9;


 stat->blksize = osb->s_clustersize;

bail:
 return err;
}
