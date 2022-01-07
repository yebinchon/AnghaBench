
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int block_cache; } ;
struct squashfs_cache_entry {int error; int length; int next_index; } ;


 int EIO ;
 int TRACE (char*,int ,int) ;
 struct squashfs_cache_entry* squashfs_cache_get (struct super_block*,int ,int ,int ) ;
 int squashfs_cache_put (struct squashfs_cache_entry*) ;
 int squashfs_copy_data (void*,struct squashfs_cache_entry*,int,int) ;
 scalar_t__ unlikely (int) ;

int squashfs_read_metadata(struct super_block *sb, void *buffer,
  u64 *block, int *offset, int length)
{
 struct squashfs_sb_info *msblk = sb->s_fs_info;
 int bytes, res = length;
 struct squashfs_cache_entry *entry;

 TRACE("Entered squashfs_read_metadata [%llx:%x]\n", *block, *offset);

 if (unlikely(length < 0))
  return -EIO;

 while (length) {
  entry = squashfs_cache_get(sb, msblk->block_cache, *block, 0);
  if (entry->error) {
   res = entry->error;
   goto error;
  } else if (*offset >= entry->length) {
   res = -EIO;
   goto error;
  }

  bytes = squashfs_copy_data(buffer, entry, *offset, length);
  if (buffer)
   buffer += bytes;
  length -= bytes;
  *offset += bytes;

  if (*offset == entry->length) {
   *block = entry->next_index;
   *offset = 0;
  }

  squashfs_cache_put(entry);
 }

 return res;

error:
 squashfs_cache_put(entry);
 return res;
}
