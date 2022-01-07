
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct ocfs2_xattr_search {int * here; scalar_t__ not_found; int inode_bh; } ;
struct ocfs2_xattr_info {int dummy; } ;
struct ocfs2_xa_loc {int * xl_entry; } ;
struct ocfs2_inode_info {int ip_dyn_features; int ip_alloc_sem; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;


 int ENOSPC ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_XATTR_FL ;
 scalar_t__ OCFS2_MIN_BLOCKSIZE ;
 int down_write (int *) ;
 int mlog_errno (int) ;
 int ocfs2_init_dinode_xa_loc (struct ocfs2_xa_loc*,struct inode*,int ,int *) ;
 int ocfs2_xa_set (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_xattr_ibody_init (struct inode*,int ,struct ocfs2_xattr_set_ctxt*) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_xattr_ibody_set(struct inode *inode,
     struct ocfs2_xattr_info *xi,
     struct ocfs2_xattr_search *xs,
     struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_xa_loc loc;

 if (inode->i_sb->s_blocksize == OCFS2_MIN_BLOCKSIZE)
  return -ENOSPC;

 down_write(&oi->ip_alloc_sem);
 if (!(oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL)) {
  ret = ocfs2_xattr_ibody_init(inode, xs->inode_bh, ctxt);
  if (ret) {
   if (ret != -ENOSPC)
    mlog_errno(ret);
   goto out;
  }
 }

 ocfs2_init_dinode_xa_loc(&loc, inode, xs->inode_bh,
     xs->not_found ? ((void*)0) : xs->here);
 ret = ocfs2_xa_set(&loc, xi, ctxt);
 if (ret) {
  if (ret != -ENOSPC)
   mlog_errno(ret);
  goto out;
 }
 xs->here = loc.xl_entry;

out:
 up_write(&oi->ip_alloc_sem);

 return ret;
}
