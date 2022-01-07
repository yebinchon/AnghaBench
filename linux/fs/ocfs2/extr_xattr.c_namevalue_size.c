
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int OCFS2_XATTR_INLINE_SIZE ;
 int OCFS2_XATTR_ROOT_SIZE ;
 int OCFS2_XATTR_SIZE (int) ;

__attribute__((used)) static int namevalue_size(int name_len, uint64_t value_len)
{
 if (value_len > OCFS2_XATTR_INLINE_SIZE)
  return OCFS2_XATTR_SIZE(name_len) + OCFS2_XATTR_ROOT_SIZE;
 else
  return OCFS2_XATTR_SIZE(name_len) + OCFS2_XATTR_SIZE(value_len);
}
