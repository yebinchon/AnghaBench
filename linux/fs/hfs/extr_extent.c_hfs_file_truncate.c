
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int i_size; struct address_space* i_mapping; int i_ino; struct super_block* i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {int phys_size; void* first_blocks; int flags; int fs_blocks; void* alloc_blocks; int extents_lock; void* cached_blocks; void* cached_start; int cached_extents; int first_extents; } ;
struct TYPE_3__ {int alloc_blksz; int ext_tree; } ;


 int HFS_FLG_EXT_DIRTY ;
 int HFS_FLG_EXT_NEW ;
 TYPE_2__* HFS_I (struct inode*) ;
 TYPE_1__* HFS_SB (struct super_block*) ;
 int INODE ;
 int __hfs_ext_cache_extent (struct hfs_find_data*,struct inode*,void*) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_dbg (int ,char*,int ,long long,int) ;
 int hfs_dump_extent (int ) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfs_free_extents (struct super_block*,int ,void*,void*) ;
 int inode_set_bytes (struct inode*,int) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pagecache_write_begin (int *,struct address_space*,int,int ,int ,struct page**,void**) ;
 int pagecache_write_end (int *,struct address_space*,int,int ,int ,struct page*,void*) ;

void hfs_file_truncate(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 struct hfs_find_data fd;
 u16 blk_cnt, alloc_cnt, start;
 u32 size;
 int res;

 hfs_dbg(INODE, "truncate: %lu, %Lu -> %Lu\n",
  inode->i_ino, (long long)HFS_I(inode)->phys_size,
  inode->i_size);
 if (inode->i_size > HFS_I(inode)->phys_size) {
  struct address_space *mapping = inode->i_mapping;
  void *fsdata;
  struct page *page;


  size = inode->i_size - 1;
  res = pagecache_write_begin(((void*)0), mapping, size+1, 0, 0,
         &page, &fsdata);
  if (!res) {
   res = pagecache_write_end(((void*)0), mapping, size+1, 0, 0,
     page, fsdata);
  }
  if (res)
   inode->i_size = HFS_I(inode)->phys_size;
  return;
 } else if (inode->i_size == HFS_I(inode)->phys_size)
  return;
 size = inode->i_size + HFS_SB(sb)->alloc_blksz - 1;
 blk_cnt = size / HFS_SB(sb)->alloc_blksz;
 alloc_cnt = HFS_I(inode)->alloc_blocks;
 if (blk_cnt == alloc_cnt)
  goto out;

 mutex_lock(&HFS_I(inode)->extents_lock);
 res = hfs_find_init(HFS_SB(sb)->ext_tree, &fd);
 if (res) {
  mutex_unlock(&HFS_I(inode)->extents_lock);

  return;
 }
 while (1) {
  if (alloc_cnt == HFS_I(inode)->first_blocks) {
   hfs_free_extents(sb, HFS_I(inode)->first_extents,
      alloc_cnt, alloc_cnt - blk_cnt);
   hfs_dump_extent(HFS_I(inode)->first_extents);
   HFS_I(inode)->first_blocks = blk_cnt;
   break;
  }
  res = __hfs_ext_cache_extent(&fd, inode, alloc_cnt);
  if (res)
   break;
  start = HFS_I(inode)->cached_start;
  hfs_free_extents(sb, HFS_I(inode)->cached_extents,
     alloc_cnt - start, alloc_cnt - blk_cnt);
  hfs_dump_extent(HFS_I(inode)->cached_extents);
  if (blk_cnt > start) {
   HFS_I(inode)->flags |= HFS_FLG_EXT_DIRTY;
   break;
  }
  alloc_cnt = start;
  HFS_I(inode)->cached_start = HFS_I(inode)->cached_blocks = 0;
  HFS_I(inode)->flags &= ~(HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW);
  hfs_brec_remove(&fd);
 }
 hfs_find_exit(&fd);
 mutex_unlock(&HFS_I(inode)->extents_lock);

 HFS_I(inode)->alloc_blocks = blk_cnt;
out:
 HFS_I(inode)->phys_size = inode->i_size;
 HFS_I(inode)->fs_blocks = (inode->i_size + sb->s_blocksize - 1) >> sb->s_blocksize_bits;
 inode_set_bytes(inode, HFS_I(inode)->fs_blocks << sb->s_blocksize_bits);
 mark_inode_dirty(inode);
}
