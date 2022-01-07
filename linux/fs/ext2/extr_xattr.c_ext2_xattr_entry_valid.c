
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_entry {scalar_t__ e_value_block; int e_value_offs; int e_value_size; } ;


 struct ext2_xattr_entry* EXT2_XATTR_NEXT (struct ext2_xattr_entry*) ;
 size_t le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static bool
ext2_xattr_entry_valid(struct ext2_xattr_entry *entry,
         char *end, size_t end_offs)
{
 struct ext2_xattr_entry *next;
 size_t size;

 next = EXT2_XATTR_NEXT(entry);
 if ((char *)next >= end)
  return 0;

 if (entry->e_value_block != 0)
  return 0;

 size = le32_to_cpu(entry->e_value_size);
 if (size > end_offs ||
     le16_to_cpu(entry->e_value_offs) + size > end_offs)
  return 0;

 return 1;
}
