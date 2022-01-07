
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_lock_holder {int dummy; } ;
struct inode {int i_mode; int i_sb; } ;
struct dentry {int d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_xattr_sem; int ip_alloc_sem; } ;


 int EOPNOTSUPP ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int __ocfs2_reflink (struct dentry*,struct buffer_head*,struct inode*,int) ;
 int brelse (struct buffer_head*) ;
 struct inode* d_inode (struct dentry*) ;
 int down_write (int *) ;
 int iput (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_create_inode_in_orphan (struct inode*,int ,struct inode**) ;
 int ocfs2_init_security_and_acl (struct inode*,struct inode*,int *) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_lock_tracker (struct inode*,int *,int,struct ocfs2_lock_holder*) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_inode_unlock_tracker (struct inode*,int,struct ocfs2_lock_holder*,int) ;
 int ocfs2_mv_orphaned_inode_to_new (struct inode*,struct inode*,struct dentry*) ;
 int ocfs2_open_unlock (struct inode*) ;
 int ocfs2_refcount_tree (int ) ;
 int ocfs2_rw_lock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_reflink(struct dentry *old_dentry, struct inode *dir,
    struct dentry *new_dentry, bool preserve)
{
 int error, had_lock;
 struct inode *inode = d_inode(old_dentry);
 struct buffer_head *old_bh = ((void*)0);
 struct inode *new_orphan_inode = ((void*)0);
 struct ocfs2_lock_holder oh;

 if (!ocfs2_refcount_tree(OCFS2_SB(inode->i_sb)))
  return -EOPNOTSUPP;


 error = ocfs2_create_inode_in_orphan(dir, inode->i_mode,
          &new_orphan_inode);
 if (error) {
  mlog_errno(error);
  goto out;
 }

 error = ocfs2_rw_lock(inode, 1);
 if (error) {
  mlog_errno(error);
  goto out;
 }

 error = ocfs2_inode_lock(inode, &old_bh, 1);
 if (error) {
  mlog_errno(error);
  ocfs2_rw_unlock(inode, 1);
  goto out;
 }

 down_write(&OCFS2_I(inode)->ip_xattr_sem);
 down_write(&OCFS2_I(inode)->ip_alloc_sem);
 error = __ocfs2_reflink(old_dentry, old_bh,
    new_orphan_inode, preserve);
 up_write(&OCFS2_I(inode)->ip_alloc_sem);
 up_write(&OCFS2_I(inode)->ip_xattr_sem);

 ocfs2_inode_unlock(inode, 1);
 ocfs2_rw_unlock(inode, 1);
 brelse(old_bh);

 if (error) {
  mlog_errno(error);
  goto out;
 }

 had_lock = ocfs2_inode_lock_tracker(new_orphan_inode, ((void*)0), 1,
         &oh);
 if (had_lock < 0) {
  error = had_lock;
  mlog_errno(error);
  goto out;
 }


 if (!preserve) {
  error = ocfs2_init_security_and_acl(dir, new_orphan_inode,
          &new_dentry->d_name);
  if (error)
   mlog_errno(error);
 }
 if (!error) {
  error = ocfs2_mv_orphaned_inode_to_new(dir, new_orphan_inode,
             new_dentry);
  if (error)
   mlog_errno(error);
 }
 ocfs2_inode_unlock_tracker(new_orphan_inode, 1, &oh, had_lock);

out:
 if (new_orphan_inode) {




  ocfs2_open_unlock(new_orphan_inode);
  if (error)
   iput(new_orphan_inode);
 }

 return error;
}
