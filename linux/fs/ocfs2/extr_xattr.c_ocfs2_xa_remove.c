
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_set_ctxt {int dummy; } ;
struct ocfs2_xa_loc {int xl_entry; } ;


 int mlog_errno (int) ;
 int ocfs2_xa_cleanup_value_truncate (struct ocfs2_xa_loc*,char*,unsigned int) ;
 int ocfs2_xa_remove_entry (struct ocfs2_xa_loc*) ;
 unsigned int ocfs2_xa_value_clusters (struct ocfs2_xa_loc*) ;
 int ocfs2_xa_value_truncate (struct ocfs2_xa_loc*,int ,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_xattr_is_local (int ) ;

__attribute__((used)) static int ocfs2_xa_remove(struct ocfs2_xa_loc *loc,
      struct ocfs2_xattr_set_ctxt *ctxt)
{
 int rc = 0;
 unsigned int orig_clusters;

 if (!ocfs2_xattr_is_local(loc->xl_entry)) {
  orig_clusters = ocfs2_xa_value_clusters(loc);
  rc = ocfs2_xa_value_truncate(loc, 0, ctxt);
  if (rc) {
   mlog_errno(rc);






   if (orig_clusters != ocfs2_xa_value_clusters(loc))
    rc = 0;
   ocfs2_xa_cleanup_value_truncate(loc, "removing",
       orig_clusters);
   if (rc)
    goto out;
  }
 }

 ocfs2_xa_remove_entry(loc);

out:
 return rc;
}
