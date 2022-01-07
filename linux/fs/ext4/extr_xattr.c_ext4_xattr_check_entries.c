
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ext4_xattr_entry {scalar_t__ e_name_len; scalar_t__ e_value_inum; int e_value_offs; int e_value_size; int e_name; } ;


 int EFSCORRUPTED ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int EXT4_XATTR_SIZE (scalar_t__) ;
 scalar_t__ EXT4_XATTR_SIZE_MAX ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ strnlen (int ,scalar_t__) ;

__attribute__((used)) static int
ext4_xattr_check_entries(struct ext4_xattr_entry *entry, void *end,
    void *value_start)
{
 struct ext4_xattr_entry *e = entry;


 while (!IS_LAST_ENTRY(e)) {
  struct ext4_xattr_entry *next = EXT4_XATTR_NEXT(e);
  if ((void *)next >= end)
   return -EFSCORRUPTED;
  if (strnlen(e->e_name, e->e_name_len) != e->e_name_len)
   return -EFSCORRUPTED;
  e = next;
 }


 while (!IS_LAST_ENTRY(entry)) {
  u32 size = le32_to_cpu(entry->e_value_size);

  if (size > EXT4_XATTR_SIZE_MAX)
   return -EFSCORRUPTED;

  if (size != 0 && entry->e_value_inum == 0) {
   u16 offs = le16_to_cpu(entry->e_value_offs);
   void *value;







   if (offs > end - value_start)
    return -EFSCORRUPTED;
   value = value_start + offs;
   if (value < (void *)e + sizeof(u32) ||
       size > end - value ||
       EXT4_XATTR_SIZE(size) > end - value)
    return -EFSCORRUPTED;
  }
  entry = EXT4_XATTR_NEXT(entry);
 }

 return 0;
}
