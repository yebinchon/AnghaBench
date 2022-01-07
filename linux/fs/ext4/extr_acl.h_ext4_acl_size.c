
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext4_acl_header ;
typedef int ext4_acl_entry_short ;
typedef int ext4_acl_entry ;



__attribute__((used)) static inline size_t ext4_acl_size(int count)
{
 if (count <= 4) {
  return sizeof(ext4_acl_header) +
         count * sizeof(ext4_acl_entry_short);
 } else {
  return sizeof(ext4_acl_header) +
         4 * sizeof(ext4_acl_entry_short) +
         (count - 4) * sizeof(ext4_acl_entry);
 }
}
