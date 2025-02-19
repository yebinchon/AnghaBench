
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_xattr_set_ctxt {int set_abort; } ;
struct ocfs2_xattr_info {scalar_t__ xi_value_len; } ;
struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
typedef scalar_t__ __le64 ;
struct TYPE_2__ {scalar_t__ xe_value_size; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 scalar_t__ OCFS2_XATTR_INLINE_SIZE ;
 int mlog_errno (int) ;
 int ocfs2_xa_add_namevalue (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ;
 scalar_t__ ocfs2_xa_can_reuse_entry (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ;
 int ocfs2_xa_check_space (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*) ;
 int ocfs2_xa_cleanup_value_truncate (struct ocfs2_xa_loc*,char*,unsigned int) ;
 int ocfs2_xa_install_value_root (struct ocfs2_xa_loc*) ;
 int ocfs2_xa_reuse_entry (struct ocfs2_xa_loc*,struct ocfs2_xattr_info*,struct ocfs2_xattr_set_ctxt*) ;
 unsigned int ocfs2_xa_value_clusters (struct ocfs2_xa_loc*) ;
 int ocfs2_xa_value_truncate (struct ocfs2_xa_loc*,scalar_t__,struct ocfs2_xattr_set_ctxt*) ;
 int ocfs2_xa_wipe_namevalue (struct ocfs2_xa_loc*) ;
 int ocfs2_xattr_is_local (TYPE_1__*) ;

__attribute__((used)) static int ocfs2_xa_prepare_entry(struct ocfs2_xa_loc *loc,
      struct ocfs2_xattr_info *xi,
      u32 name_hash,
      struct ocfs2_xattr_set_ctxt *ctxt)
{
 int rc = 0;
 unsigned int orig_clusters;
 __le64 orig_value_size = 0;

 rc = ocfs2_xa_check_space(loc, xi);
 if (rc)
  goto out;

 if (!loc->xl_entry) {
  rc = -EINVAL;
  goto out;
 }

 if (ocfs2_xa_can_reuse_entry(loc, xi)) {
  orig_value_size = loc->xl_entry->xe_value_size;
  rc = ocfs2_xa_reuse_entry(loc, xi, ctxt);
  if (rc)
   goto out;
  goto alloc_value;
 }

 if (!ocfs2_xattr_is_local(loc->xl_entry)) {
  orig_clusters = ocfs2_xa_value_clusters(loc);
  rc = ocfs2_xa_value_truncate(loc, 0, ctxt);
  if (rc) {
   mlog_errno(rc);
   ocfs2_xa_cleanup_value_truncate(loc,
       "overwriting",
       orig_clusters);
   goto out;
  }
 }
 ocfs2_xa_wipe_namevalue(loc);





 ocfs2_xa_add_namevalue(loc, xi);
 if (xi->xi_value_len > OCFS2_XATTR_INLINE_SIZE)
  ocfs2_xa_install_value_root(loc);

alloc_value:
 if (xi->xi_value_len > OCFS2_XATTR_INLINE_SIZE) {
  orig_clusters = ocfs2_xa_value_clusters(loc);
  rc = ocfs2_xa_value_truncate(loc, xi->xi_value_len, ctxt);
  if (rc < 0) {
   ctxt->set_abort = 1;
   ocfs2_xa_cleanup_value_truncate(loc, "growing",
       orig_clusters);






   if (loc->xl_entry) {
    BUG_ON(!orig_value_size);
    loc->xl_entry->xe_value_size = orig_value_size;
   }
   mlog_errno(rc);
  }
 }

out:
 return rc;
}
