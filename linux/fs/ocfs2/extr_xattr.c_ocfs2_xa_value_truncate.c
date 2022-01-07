
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_xattr_value_buf {int dummy; } ;
struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xa_loc {int xl_inode; } ;


 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int ocfs2_xa_fill_value_buf (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ;
 int ocfs2_xa_journal_access (int ,struct ocfs2_xa_loc*,int ) ;
 int ocfs2_xattr_value_truncate (int ,struct ocfs2_xattr_value_buf*,int ,struct ocfs2_xattr_set_ctxt*) ;

__attribute__((used)) static int ocfs2_xa_value_truncate(struct ocfs2_xa_loc *loc, u64 bytes,
       struct ocfs2_xattr_set_ctxt *ctxt)
{
 int trunc_rc, access_rc;
 struct ocfs2_xattr_value_buf vb;

 ocfs2_xa_fill_value_buf(loc, &vb);
 trunc_rc = ocfs2_xattr_value_truncate(loc->xl_inode, &vb, bytes,
           ctxt);
 access_rc = ocfs2_xa_journal_access(ctxt->handle, loc,
         OCFS2_JOURNAL_ACCESS_WRITE);


 return trunc_rc ? trunc_rc : access_rc;
}
