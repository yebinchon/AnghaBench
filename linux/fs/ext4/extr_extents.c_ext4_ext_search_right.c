
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_depth; struct ext4_extent_header* p_hdr; struct ext4_extent_idx* p_idx; struct ext4_extent* p_ext; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef int ext4_fsblk_t ;


 int EFSCORRUPTED ;
 int EXT4_ERROR_INODE (struct inode*,char*,scalar_t__,...) ;
 struct ext4_extent* EXT_FIRST_EXTENT (struct ext4_extent_header*) ;
 struct ext4_extent_idx* EXT_FIRST_INDEX (struct ext4_extent_header*) ;
 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 struct ext4_extent_idx* EXT_LAST_INDEX (struct ext4_extent_header*) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_idx_pblock (struct ext4_extent_idx*) ;
 struct ext4_extent_header* ext_block_hdr (struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* read_extent_tree_block (struct inode*,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ext4_ext_search_right(struct inode *inode,
     struct ext4_ext_path *path,
     ext4_lblk_t *logical, ext4_fsblk_t *phys,
     struct ext4_extent **ret_ex)
{
 struct buffer_head *bh = ((void*)0);
 struct ext4_extent_header *eh;
 struct ext4_extent_idx *ix;
 struct ext4_extent *ex;
 ext4_fsblk_t block;
 int depth;
 int ee_len;

 if (unlikely(path == ((void*)0))) {
  EXT4_ERROR_INODE(inode, "path == NULL *logical %d!", *logical);
  return -EFSCORRUPTED;
 }
 depth = path->p_depth;
 *phys = 0;

 if (depth == 0 && path->p_ext == ((void*)0))
  return 0;





 ex = path[depth].p_ext;
 ee_len = ext4_ext_get_actual_len(ex);
 if (*logical < le32_to_cpu(ex->ee_block)) {
  if (unlikely(EXT_FIRST_EXTENT(path[depth].p_hdr) != ex)) {
   EXT4_ERROR_INODE(inode,
      "first_extent(path[%d].p_hdr) != ex",
      depth);
   return -EFSCORRUPTED;
  }
  while (--depth >= 0) {
   ix = path[depth].p_idx;
   if (unlikely(ix != EXT_FIRST_INDEX(path[depth].p_hdr))) {
    EXT4_ERROR_INODE(inode,
       "ix != EXT_FIRST_INDEX *logical %d!",
       *logical);
    return -EFSCORRUPTED;
   }
  }
  goto found_extent;
 }

 if (unlikely(*logical < (le32_to_cpu(ex->ee_block) + ee_len))) {
  EXT4_ERROR_INODE(inode,
     "logical %d < ee_block %d + ee_len %d!",
     *logical, le32_to_cpu(ex->ee_block), ee_len);
  return -EFSCORRUPTED;
 }

 if (ex != EXT_LAST_EXTENT(path[depth].p_hdr)) {

  ex++;
  goto found_extent;
 }


 while (--depth >= 0) {
  ix = path[depth].p_idx;
  if (ix != EXT_LAST_INDEX(path[depth].p_hdr))
   goto got_index;
 }


 return 0;

got_index:



 ix++;
 block = ext4_idx_pblock(ix);
 while (++depth < path->p_depth) {

  bh = read_extent_tree_block(inode, block,
         path->p_depth - depth, 0);
  if (IS_ERR(bh))
   return PTR_ERR(bh);
  eh = ext_block_hdr(bh);
  ix = EXT_FIRST_INDEX(eh);
  block = ext4_idx_pblock(ix);
  put_bh(bh);
 }

 bh = read_extent_tree_block(inode, block, path->p_depth - depth, 0);
 if (IS_ERR(bh))
  return PTR_ERR(bh);
 eh = ext_block_hdr(bh);
 ex = EXT_FIRST_EXTENT(eh);
found_extent:
 *logical = le32_to_cpu(ex->ee_block);
 *phys = ext4_ext_pblock(ex);
 *ret_ex = ex;
 if (bh)
  put_bh(bh);
 return 0;
}
