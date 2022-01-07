
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_acl_header {int dummy; } ;
struct f2fs_acl_entry_short {int dummy; } ;
struct f2fs_acl_entry {int dummy; } ;
typedef int ssize_t ;



__attribute__((used)) static inline int f2fs_acl_count(size_t size)
{
 ssize_t s;
 size -= sizeof(struct f2fs_acl_header);
 s = size - 4 * sizeof(struct f2fs_acl_entry_short);
 if (s < 0) {
  if (size % sizeof(struct f2fs_acl_entry_short))
   return -1;
  return size / sizeof(struct f2fs_acl_entry_short);
 } else {
  if (s % sizeof(struct f2fs_acl_entry))
   return -1;
  return s / sizeof(struct f2fs_acl_entry) + 4;
 }
}
