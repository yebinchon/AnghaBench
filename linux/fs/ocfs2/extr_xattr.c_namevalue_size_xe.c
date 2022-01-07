
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ocfs2_xattr_entry {int xe_name_len; int xe_value_size; } ;


 int BUG_ON (int) ;
 scalar_t__ OCFS2_XATTR_INLINE_SIZE ;
 scalar_t__ le64_to_cpu (int ) ;
 int namevalue_size (int ,scalar_t__) ;
 scalar_t__ ocfs2_xattr_is_local (struct ocfs2_xattr_entry*) ;

__attribute__((used)) static int namevalue_size_xe(struct ocfs2_xattr_entry *xe)
{
 u64 value_len = le64_to_cpu(xe->xe_value_size);

 BUG_ON((value_len > OCFS2_XATTR_INLINE_SIZE) &&
        ocfs2_xattr_is_local(xe));
 return namevalue_size(xe->xe_name_len, value_len);
}
