
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
struct TYPE_2__ {int xe_name_offset; int xe_name_len; } ;


 int OCFS2_XATTR_ROOT_SIZE ;
 int OCFS2_XATTR_SIZE (int ) ;
 int def_xv ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,int *,int ) ;
 char* ocfs2_xa_offset_pointer (struct ocfs2_xa_loc*,int ) ;

__attribute__((used)) static void ocfs2_xa_install_value_root(struct ocfs2_xa_loc *loc)
{
 int name_size = OCFS2_XATTR_SIZE(loc->xl_entry->xe_name_len);
 char *nameval_buf;

 nameval_buf = ocfs2_xa_offset_pointer(loc,
    le16_to_cpu(loc->xl_entry->xe_name_offset));
 memcpy(nameval_buf + name_size, &def_xv, OCFS2_XATTR_ROOT_SIZE);
}
