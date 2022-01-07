
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int * d_fsdata; } ;
struct TYPE_2__ {int ip_blkno; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int mlog_errno (int) ;
 int ocfs2_dentry_attach_lock (struct dentry*,struct inode*,int ) ;
 int ocfs2_dentry_lock_put (struct ocfs2_super*,int *) ;

void ocfs2_dentry_move(struct dentry *dentry, struct dentry *target,
         struct inode *old_dir, struct inode *new_dir)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(old_dir->i_sb);
 struct inode *inode = d_inode(dentry);







 if (old_dir == new_dir)
  goto out_move;

 ocfs2_dentry_lock_put(osb, dentry->d_fsdata);

 dentry->d_fsdata = ((void*)0);
 ret = ocfs2_dentry_attach_lock(dentry, inode, OCFS2_I(new_dir)->ip_blkno);
 if (ret)
  mlog_errno(ret);

out_move:
 d_move(dentry, target);
}
