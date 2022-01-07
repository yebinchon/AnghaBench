
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int e_name_len; scalar_t__ e_name_index; int e_value_size; int e_value_inum; int e_name; } ;
struct ext4_inode {int dummy; } ;
typedef int handle_t ;


 int ENOSPC ;
 scalar_t__ EXT4_XATTR_INDEX_SYSTEM ;
 unsigned int EXT4_XATTR_LEN (int) ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 scalar_t__ EXT4_XATTR_SIZE (int ) ;
 struct ext4_xattr_entry* IFIRST (struct ext4_xattr_ibody_header*) ;
 struct ext4_xattr_ibody_header* IHDR (struct inode*,struct ext4_inode*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int ext4_xattr_move_to_block (int *,struct inode*,struct ext4_inode*,struct ext4_xattr_entry*) ;
 int le32_to_cpu (int ) ;
 int memcmp (int ,char*,int) ;

__attribute__((used)) static int ext4_xattr_make_inode_space(handle_t *handle, struct inode *inode,
           struct ext4_inode *raw_inode,
           int isize_diff, size_t ifree,
           size_t bfree, int *total_ino)
{
 struct ext4_xattr_ibody_header *header = IHDR(inode, raw_inode);
 struct ext4_xattr_entry *small_entry;
 struct ext4_xattr_entry *entry;
 struct ext4_xattr_entry *last;
 unsigned int entry_size;
 unsigned int total_size;
 unsigned int min_total_size;
 int error;

 while (isize_diff > ifree) {
  entry = ((void*)0);
  small_entry = ((void*)0);
  min_total_size = ~0U;
  last = IFIRST(header);

  for (; !IS_LAST_ENTRY(last); last = EXT4_XATTR_NEXT(last)) {

   if ((last->e_name_len == 4) &&
       (last->e_name_index == EXT4_XATTR_INDEX_SYSTEM) &&
       !memcmp(last->e_name, "data", 4))
    continue;
   total_size = EXT4_XATTR_LEN(last->e_name_len);
   if (!last->e_value_inum)
    total_size += EXT4_XATTR_SIZE(
            le32_to_cpu(last->e_value_size));
   if (total_size <= bfree &&
       total_size < min_total_size) {
    if (total_size + ifree < isize_diff) {
     small_entry = last;
    } else {
     entry = last;
     min_total_size = total_size;
    }
   }
  }

  if (entry == ((void*)0)) {
   if (small_entry == ((void*)0))
    return -ENOSPC;
   entry = small_entry;
  }

  entry_size = EXT4_XATTR_LEN(entry->e_name_len);
  total_size = entry_size;
  if (!entry->e_value_inum)
   total_size += EXT4_XATTR_SIZE(
           le32_to_cpu(entry->e_value_size));
  error = ext4_xattr_move_to_block(handle, inode, raw_inode,
       entry);
  if (error)
   return error;

  *total_ino -= entry_size;
  ifree += total_size;
  bfree -= total_size;
 }

 return 0;
}
