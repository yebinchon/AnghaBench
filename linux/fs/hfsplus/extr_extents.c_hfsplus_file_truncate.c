
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct page {int dummy; } ;
struct inode {int i_size; struct address_space* i_mapping; int i_ino; struct super_block* i_sb; } ;
struct hfsplus_inode_info {int phys_size; void* first_blocks; int extent_state; int fs_blocks; int extents_lock; void* alloc_blocks; void* cached_blocks; void* cached_start; int cached_extents; int first_extents; } ;
struct hfs_find_data {TYPE_1__* tree; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;
struct TYPE_4__ {int alloc_blksz; int alloc_blksz_shift; int ext_tree; } ;
struct TYPE_3__ {int tree_lock; } ;


 int HFSPLUS_EXT_DIRTY ;
 int HFSPLUS_EXT_NEW ;
 struct hfsplus_inode_info* HFSPLUS_I (struct inode*) ;
 int HFSPLUS_I_ALLOC_DIRTY ;
 TYPE_2__* HFSPLUS_SB (struct super_block*) ;
 int INODE ;
 int __hfsplus_ext_cache_extent (struct hfs_find_data*,struct inode*,void*) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_dbg (int ,char*,int ,long long,int) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfsplus_dump_extent (int ) ;
 int hfsplus_free_extents (struct super_block*,int ,void*,void*) ;
 int hfsplus_mark_inode_dirty (struct inode*,int ) ;
 int inode_set_bytes (struct inode*,int) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pagecache_write_begin (int *,struct address_space*,int,int ,int ,struct page**,void**) ;
 int pagecache_write_end (int *,struct address_space*,int,int ,int ,struct page*,void*) ;

void hfsplus_file_truncate(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;
 struct hfsplus_inode_info *hip = HFSPLUS_I(inode);
 struct hfs_find_data fd;
 u32 alloc_cnt, blk_cnt, start;
 int res;

 hfs_dbg(INODE, "truncate: %lu, %llu -> %llu\n",
  inode->i_ino, (long long)hip->phys_size, inode->i_size);

 if (inode->i_size > hip->phys_size) {
  struct address_space *mapping = inode->i_mapping;
  struct page *page;
  void *fsdata;
  loff_t size = inode->i_size;

  res = pagecache_write_begin(((void*)0), mapping, size, 0, 0,
         &page, &fsdata);
  if (res)
   return;
  res = pagecache_write_end(((void*)0), mapping, size,
   0, 0, page, fsdata);
  if (res < 0)
   return;
  mark_inode_dirty(inode);
  return;
 } else if (inode->i_size == hip->phys_size)
  return;

 blk_cnt = (inode->i_size + HFSPLUS_SB(sb)->alloc_blksz - 1) >>
   HFSPLUS_SB(sb)->alloc_blksz_shift;

 mutex_lock(&hip->extents_lock);

 alloc_cnt = hip->alloc_blocks;
 if (blk_cnt == alloc_cnt)
  goto out_unlock;

 res = hfs_find_init(HFSPLUS_SB(sb)->ext_tree, &fd);
 if (res) {
  mutex_unlock(&hip->extents_lock);

  return;
 }
 while (1) {
  if (alloc_cnt == hip->first_blocks) {
   mutex_unlock(&fd.tree->tree_lock);
   hfsplus_free_extents(sb, hip->first_extents,
          alloc_cnt, alloc_cnt - blk_cnt);
   hfsplus_dump_extent(hip->first_extents);
   hip->first_blocks = blk_cnt;
   mutex_lock(&fd.tree->tree_lock);
   break;
  }
  res = __hfsplus_ext_cache_extent(&fd, inode, alloc_cnt);
  if (res)
   break;
  hfs_brec_remove(&fd);

  mutex_unlock(&fd.tree->tree_lock);
  start = hip->cached_start;
  hfsplus_free_extents(sb, hip->cached_extents,
         alloc_cnt - start, alloc_cnt - blk_cnt);
  hfsplus_dump_extent(hip->cached_extents);
  if (blk_cnt > start) {
   hip->extent_state |= HFSPLUS_EXT_DIRTY;
   break;
  }
  alloc_cnt = start;
  hip->cached_start = hip->cached_blocks = 0;
  hip->extent_state &= ~(HFSPLUS_EXT_DIRTY | HFSPLUS_EXT_NEW);
  mutex_lock(&fd.tree->tree_lock);
 }
 hfs_find_exit(&fd);

 hip->alloc_blocks = blk_cnt;
out_unlock:
 mutex_unlock(&hip->extents_lock);
 hip->phys_size = inode->i_size;
 hip->fs_blocks = (inode->i_size + sb->s_blocksize - 1) >>
  sb->s_blocksize_bits;
 inode_set_bytes(inode, hip->fs_blocks << sb->s_blocksize_bits);
 hfsplus_mark_inode_dirty(inode, HFSPLUS_I_ALLOC_DIRTY);
}
