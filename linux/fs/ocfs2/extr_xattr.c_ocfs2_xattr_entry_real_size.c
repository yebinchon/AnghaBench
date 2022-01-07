
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_entry {int dummy; } ;


 int namevalue_size (int,size_t) ;

__attribute__((used)) static int ocfs2_xattr_entry_real_size(int name_len, size_t value_len)
{
 return namevalue_size(name_len, value_len) +
  sizeof(struct ocfs2_xattr_entry);
}
