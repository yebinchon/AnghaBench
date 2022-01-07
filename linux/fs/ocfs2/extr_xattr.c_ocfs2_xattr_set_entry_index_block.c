
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct ocfs2_xattr_search {int not_found; int xattr_bh; int bucket; } ;
struct ocfs2_xattr_info {int xi_name; int xi_name_index; } ;
struct inode {int dummy; } ;


 int ENODATA ;
 int ENOSPC ;
 int mlog_errno (int) ;
 int ocfs2_add_new_xattr_bucket (struct inode*,int ,int ,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_check_xattr_bucket_collision (struct inode*,int ,int ) ;
 int ocfs2_xattr_bucket_relse (int ) ;
 int ocfs2_xattr_index_block_find (struct inode*,int ,int ,int ,struct ocfs2_xattr_search*) ;
 int ocfs2_xattr_set_entry_bucket (struct inode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ;
 int trace_ocfs2_xattr_set_entry_index_block (int ) ;

__attribute__((used)) static int ocfs2_xattr_set_entry_index_block(struct inode *inode,
          struct ocfs2_xattr_info *xi,
          struct ocfs2_xattr_search *xs,
          struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret;

 trace_ocfs2_xattr_set_entry_index_block(xi->xi_name);

 ret = ocfs2_xattr_set_entry_bucket(inode, xi, xs, ctxt);
 if (!ret)
  goto out;
 if (ret != -ENOSPC) {
  mlog_errno(ret);
  goto out;
 }
 ret = ocfs2_check_xattr_bucket_collision(inode,
       xs->bucket,
       xi->xi_name);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_add_new_xattr_bucket(inode,
      xs->xattr_bh,
      xs->bucket,
      ctxt);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 ocfs2_xattr_bucket_relse(xs->bucket);
 ret = ocfs2_xattr_index_block_find(inode, xs->xattr_bh,
        xi->xi_name_index,
        xi->xi_name, xs);
 if (ret && ret != -ENODATA)
  goto out;
 xs->not_found = ret;


 ret = ocfs2_xattr_set_entry_bucket(inode, xi, xs, ctxt);
 if (ret && (ret != -ENOSPC))
  mlog_errno(ret);

out:
 return ret;
}
