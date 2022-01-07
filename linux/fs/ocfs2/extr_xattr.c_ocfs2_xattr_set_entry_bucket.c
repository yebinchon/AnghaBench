
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xattr_search {int * here; int bucket; scalar_t__ not_found; } ;
struct ocfs2_xattr_info {int xi_name; } ;
struct ocfs2_xa_loc {int * xl_entry; } ;
struct inode {int dummy; } ;


 int ENOSPC ;
 int mlog_errno (int) ;
 int ocfs2_defrag_xattr_bucket (struct inode*,int ,int ) ;
 int ocfs2_init_xattr_bucket_xa_loc (struct ocfs2_xa_loc*,int ,int *) ;
 int ocfs2_xa_set (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ;
 int trace_ocfs2_xattr_set_entry_bucket (int ) ;

__attribute__((used)) static int ocfs2_xattr_set_entry_bucket(struct inode *inode,
     struct ocfs2_xattr_info *xi,
     struct ocfs2_xattr_search *xs,
     struct ocfs2_xattr_set_ctxt *ctxt)
{
 int ret;
 struct ocfs2_xa_loc loc;

 trace_ocfs2_xattr_set_entry_bucket(xi->xi_name);

 ocfs2_init_xattr_bucket_xa_loc(&loc, xs->bucket,
           xs->not_found ? ((void*)0) : xs->here);
 ret = ocfs2_xa_set(&loc, xi, ctxt);
 if (!ret) {
  xs->here = loc.xl_entry;
  goto out;
 }
 if (ret != -ENOSPC) {
  mlog_errno(ret);
  goto out;
 }


 ret = ocfs2_defrag_xattr_bucket(inode, ctxt->handle,
     xs->bucket);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_xa_set(&loc, xi, ctxt);
 if (!ret) {
  xs->here = loc.xl_entry;
  goto out;
 }
 if (ret != -ENOSPC)
  mlog_errno(ret);


out:
 return ret;
}
