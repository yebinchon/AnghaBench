
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {int dummy; } ;
struct ocfs2_xattr_set_ctxt {int handle; } ;
struct ocfs2_xattr_info {int xi_value_len; int xi_value; int xi_name_len; } ;
struct ocfs2_xa_loc {int xl_inode; TYPE_1__* xl_entry; } ;
struct TYPE_2__ {int xe_name_offset; } ;


 int OCFS2_XATTR_INLINE_SIZE ;
 int OCFS2_XATTR_SIZE (int ) ;
 int __ocfs2_xattr_set_value_outside (int ,int ,struct ocfs2_xattr_value_buf*,int ,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,int ,int ) ;
 int ocfs2_xa_fill_value_buf (struct ocfs2_xa_loc*,struct ocfs2_xattr_value_buf*) ;
 char* ocfs2_xa_offset_pointer (struct ocfs2_xa_loc*,int) ;

__attribute__((used)) static int ocfs2_xa_store_value(struct ocfs2_xa_loc *loc,
    struct ocfs2_xattr_info *xi,
    struct ocfs2_xattr_set_ctxt *ctxt)
{
 int rc = 0;
 int nameval_offset = le16_to_cpu(loc->xl_entry->xe_name_offset);
 int name_size = OCFS2_XATTR_SIZE(xi->xi_name_len);
 char *nameval_buf;
 struct ocfs2_xattr_value_buf vb;

 nameval_buf = ocfs2_xa_offset_pointer(loc, nameval_offset);
 if (xi->xi_value_len > OCFS2_XATTR_INLINE_SIZE) {
  ocfs2_xa_fill_value_buf(loc, &vb);
  rc = __ocfs2_xattr_set_value_outside(loc->xl_inode,
           ctxt->handle, &vb,
           xi->xi_value,
           xi->xi_value_len);
 } else
  memcpy(nameval_buf + name_size, xi->xi_value, xi->xi_value_len);

 return rc;
}
