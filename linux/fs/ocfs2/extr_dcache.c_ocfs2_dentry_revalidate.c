
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {struct inode* root_inode; } ;
struct inode {scalar_t__ i_nlink; int i_mode; } ;
struct TYPE_3__ {int name; int len; } ;
struct dentry {scalar_t__ d_fsdata; TYPE_1__ d_name; int d_lock; struct dentry* d_parent; int d_sb; } ;
struct TYPE_4__ {unsigned long ip_dir_lock_gen; int ip_flags; scalar_t__ ip_blkno; int ip_lock; } ;


 int BUG_ON (int) ;
 int ECHILD ;
 unsigned int LOOKUP_RCU ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int S_ISDIR (int ) ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_dentry_revalidate (struct dentry*,int ,int ) ;
 int trace_ocfs2_dentry_revalidate_delete (unsigned long long) ;
 int trace_ocfs2_dentry_revalidate_negative (int ,int ,unsigned long,unsigned long) ;
 int trace_ocfs2_dentry_revalidate_nofsdata (unsigned long long) ;
 int trace_ocfs2_dentry_revalidate_orphaned (unsigned long long,int ) ;
 int trace_ocfs2_dentry_revalidate_ret (int) ;

__attribute__((used)) static int ocfs2_dentry_revalidate(struct dentry *dentry, unsigned int flags)
{
 struct inode *inode;
 int ret = 0;
 struct ocfs2_super *osb;

 if (flags & LOOKUP_RCU)
  return -ECHILD;

 inode = d_inode(dentry);
 osb = OCFS2_SB(dentry->d_sb);

 trace_ocfs2_dentry_revalidate(dentry, dentry->d_name.len,
          dentry->d_name.name);





 if (inode == ((void*)0)) {
  unsigned long gen = (unsigned long) dentry->d_fsdata;
  unsigned long pgen;
  spin_lock(&dentry->d_lock);
  pgen = OCFS2_I(d_inode(dentry->d_parent))->ip_dir_lock_gen;
  spin_unlock(&dentry->d_lock);
  trace_ocfs2_dentry_revalidate_negative(dentry->d_name.len,
             dentry->d_name.name,
             pgen, gen);
  if (gen != pgen)
   goto bail;
  goto valid;
 }

 BUG_ON(!osb);

 if (inode == osb->root_inode || is_bad_inode(inode))
  goto bail;

 spin_lock(&OCFS2_I(inode)->ip_lock);

 if (OCFS2_I(inode)->ip_flags & OCFS2_INODE_DELETED) {
  spin_unlock(&OCFS2_I(inode)->ip_lock);
  trace_ocfs2_dentry_revalidate_delete(
    (unsigned long long)OCFS2_I(inode)->ip_blkno);
  goto bail;
 }
 spin_unlock(&OCFS2_I(inode)->ip_lock);





 if (inode->i_nlink == 0) {
  trace_ocfs2_dentry_revalidate_orphaned(
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   S_ISDIR(inode->i_mode));
  goto bail;
 }





 if (!dentry->d_fsdata) {
  trace_ocfs2_dentry_revalidate_nofsdata(
    (unsigned long long)OCFS2_I(inode)->ip_blkno);
  goto bail;
 }

valid:
 ret = 1;

bail:
 trace_ocfs2_dentry_revalidate_ret(ret);
 return ret;
}
