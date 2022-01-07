
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; int ip_lock; int ip_flags; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int EACCES ;
 int ENAMETOOLONG ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int IS_ERR_OR_NULL (struct dentry*) ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_MAYBE_ORPHANED ;
 scalar_t__ OCFS2_MAX_FILENAME_LEN ;
 int OCFS2_SB (int ) ;
 int OI_LS_PARENT ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 int mlog_errno (int) ;
 int ocfs2_dentry_attach_gen (struct dentry*) ;
 int ocfs2_dentry_attach_lock (struct dentry*,struct inode*,scalar_t__) ;
 struct inode* ocfs2_iget (int ,int ,int ,int ) ;
 int ocfs2_inode_lock_nested (struct inode*,int *,int ,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_lookup_ino_from_name (struct inode*,int ,scalar_t__,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_lookup (struct inode*,struct dentry*,scalar_t__,int ,unsigned long long,int ) ;
 int trace_ocfs2_lookup_ret (struct dentry*) ;

__attribute__((used)) static struct dentry *ocfs2_lookup(struct inode *dir, struct dentry *dentry,
       unsigned int flags)
{
 int status;
 u64 blkno;
 struct inode *inode = ((void*)0);
 struct dentry *ret;
 struct ocfs2_inode_info *oi;

 trace_ocfs2_lookup(dir, dentry, dentry->d_name.len,
      dentry->d_name.name,
      (unsigned long long)OCFS2_I(dir)->ip_blkno, 0);

 if (dentry->d_name.len > OCFS2_MAX_FILENAME_LEN) {
  ret = ERR_PTR(-ENAMETOOLONG);
  goto bail;
 }

 status = ocfs2_inode_lock_nested(dir, ((void*)0), 0, OI_LS_PARENT);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  ret = ERR_PTR(status);
  goto bail;
 }

 status = ocfs2_lookup_ino_from_name(dir, dentry->d_name.name,
         dentry->d_name.len, &blkno);
 if (status < 0)
  goto bail_add;

 inode = ocfs2_iget(OCFS2_SB(dir->i_sb), blkno, 0, 0);
 if (IS_ERR(inode)) {
  ret = ERR_PTR(-EACCES);
  goto bail_unlock;
 }

 oi = OCFS2_I(inode);





 spin_lock(&oi->ip_lock);
 oi->ip_flags &= ~OCFS2_INODE_MAYBE_ORPHANED;
 spin_unlock(&oi->ip_lock);

bail_add:
 ret = d_splice_alias(inode, dentry);

 if (inode) {
  if (!IS_ERR_OR_NULL(ret))
   dentry = ret;

  status = ocfs2_dentry_attach_lock(dentry, inode,
        OCFS2_I(dir)->ip_blkno);
  if (status) {
   mlog_errno(status);
   ret = ERR_PTR(status);
   goto bail_unlock;
  }
 } else
  ocfs2_dentry_attach_gen(dentry);

bail_unlock:




 ocfs2_inode_unlock(dir, 0);

bail:

 trace_ocfs2_lookup_ret(ret);

 return ret;
}
