
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocfs2_xattr_info {scalar_t__ xi_value_len; int xi_name_len; int xi_name; int xi_name_index; } ;
struct ocfs2_xa_loc {TYPE_2__* xl_entry; TYPE_1__* xl_ops; } ;
struct TYPE_5__ {int xe_name_offset; int xe_name_len; int xe_value_size; } ;
struct TYPE_4__ {int (* xlo_add_namevalue ) (struct ocfs2_xa_loc*,int) ;} ;


 scalar_t__ OCFS2_XATTR_INLINE_SIZE ;
 int cpu_to_le64 (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int) ;
 int namevalue_size_xi (struct ocfs2_xattr_info*) ;
 char* ocfs2_xa_offset_pointer (struct ocfs2_xa_loc*,int) ;
 int ocfs2_xattr_set_local (TYPE_2__*,int) ;
 int ocfs2_xattr_set_type (TYPE_2__*,int ) ;
 int stub1 (struct ocfs2_xa_loc*,int) ;

__attribute__((used)) static void ocfs2_xa_add_namevalue(struct ocfs2_xa_loc *loc,
       struct ocfs2_xattr_info *xi)
{
 int size = namevalue_size_xi(xi);
 int nameval_offset;
 char *nameval_buf;

 loc->xl_ops->xlo_add_namevalue(loc, size);
 loc->xl_entry->xe_value_size = cpu_to_le64(xi->xi_value_len);
 loc->xl_entry->xe_name_len = xi->xi_name_len;
 ocfs2_xattr_set_type(loc->xl_entry, xi->xi_name_index);
 ocfs2_xattr_set_local(loc->xl_entry,
         xi->xi_value_len <= OCFS2_XATTR_INLINE_SIZE);

 nameval_offset = le16_to_cpu(loc->xl_entry->xe_name_offset);
 nameval_buf = ocfs2_xa_offset_pointer(loc, nameval_offset);
 memset(nameval_buf, 0, size);
 memcpy(nameval_buf, xi->xi_name, xi->xi_name_len);
}
