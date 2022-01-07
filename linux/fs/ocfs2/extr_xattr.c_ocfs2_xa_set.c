
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xattr_info {int xi_value; int xi_name_len; int xi_name; } ;
struct ocfs2_xa_loc {int xl_inode; } ;


 int ENOSPC ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int mlog_errno (int) ;
 int ocfs2_xa_journal_access (int ,struct ocfs2_xa_loc*,int ) ;
 int ocfs2_xa_journal_dirty (int ,struct ocfs2_xa_loc*) ;
 int ocfs2_xa_prepare_entry (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,int ,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_xa_remove (struct ocfs2_xa_loc*,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_xa_store_value (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_xattr_name_hash (int ,int ,int ) ;

__attribute__((used)) static int ocfs2_xa_set(struct ocfs2_xa_loc *loc,
   struct ocfs2_xattr_info *xi,
   struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret;
 u32 name_hash = ocfs2_xattr_name_hash(loc->xl_inode, xi->xi_name,
           xi->xi_name_len);

 ret = ocfs2_xa_journal_access(ctxt->handle, loc,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 if (!xi->xi_value) {
  ret = ocfs2_xa_remove(loc, ctxt);
  goto out_dirty;
 }

 ret = ocfs2_xa_prepare_entry(loc, xi, name_hash, ctxt);
 if (ret) {
  if (ret != -ENOSPC)
   mlog_errno(ret);
  goto out_dirty;
 }

 ret = ocfs2_xa_store_value(loc, xi, ctxt);
 if (ret)
  mlog_errno(ret);

out_dirty:
 ocfs2_xa_journal_dirty(ctxt->handle, loc);

out:
 return ret;
}
