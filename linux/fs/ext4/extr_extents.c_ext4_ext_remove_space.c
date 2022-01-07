
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct partial_cluster {scalar_t__ state; scalar_t__ lblk; void* pclu; } ;
struct inode {int i_sb; } ;
struct ext4_sb_info {int s_cluster_ratio; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_maxdepth; int p_depth; TYPE_1__* p_hdr; struct ext4_ext_path* p_bh; void* p_block; scalar_t__ p_idx; struct ext4_extent* p_ext; } ;
struct buffer_head {int p_maxdepth; int p_depth; TYPE_1__* p_hdr; struct buffer_head* p_bh; void* p_block; scalar_t__ p_idx; struct ext4_extent* p_ext; } ;
typedef struct ext4_ext_path handle_t ;
typedef int ext4_lblk_t ;
typedef int ext4_fsblk_t ;
struct TYPE_6__ {scalar_t__ eh_entries; int eh_max; scalar_t__ eh_depth; } ;


 int EAGAIN ;
 int EFSCORRUPTED ;
 int ENOMEM ;
 void* EXT4_B2C (struct ext4_sb_info*,int) ;
 int EXT4_C2B (struct ext4_sb_info*,void*) ;
 int EXT4_ERROR_INODE (struct inode*,char*,int) ;
 int EXT4_EX_NOCACHE ;
 int EXT4_FREE_BLOCKS_RERESERVE_CLUSTER ;
 int EXT4_HT_TRUNCATE ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int EXT_FIRST_INDEX (TYPE_1__*) ;
 scalar_t__ EXT_LAST_INDEX (TYPE_1__*) ;
 int EXT_MAX_BLOCKS ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 scalar_t__ WARN_ON (int) ;
 int brelse (struct ext4_ext_path*) ;
 int cond_resched () ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ext4_ext_check (struct inode*,TYPE_1__*,int,int ) ;
 int ext4_ext_dirty (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_get_access (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_more_to_rm (struct ext4_ext_path*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_rm_idx (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,int) ;
 int ext4_ext_rm_leaf (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,struct partial_cluster*,int,int) ;
 int ext4_ext_search_right (struct inode*,struct ext4_ext_path*,int*,int*,struct ext4_extent**) ;
 int ext4_ext_space_root (struct inode*,int ) ;
 struct ext4_ext_path* ext4_find_extent (struct inode*,int,int *,int ) ;
 int ext4_force_split_extent_at (struct ext4_ext_path*,struct inode*,struct ext4_ext_path**,int,int) ;
 int ext4_free_blocks (struct ext4_ext_path*,struct inode*,int *,int ,int,int) ;
 int ext4_idx_pblock (scalar_t__) ;
 scalar_t__ ext4_is_pending (struct inode*,scalar_t__) ;
 struct ext4_ext_path* ext4_journal_start (struct inode*,int ,int) ;
 int ext4_journal_stop (struct ext4_ext_path*) ;
 int ext4_rereserve_cluster (struct inode*,scalar_t__) ;
 TYPE_1__* ext_block_hdr (struct ext4_ext_path*) ;
 int ext_debug (char*,...) ;
 int ext_depth (struct inode*) ;
 TYPE_1__* ext_inode_hdr (struct inode*) ;
 int get_default_free_blocks_flags (struct inode*) ;
 scalar_t__ initial ;
 struct ext4_ext_path* kcalloc (int,int,int ) ;
 int kfree (struct ext4_ext_path*) ;
 void* le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;
 int memset (struct ext4_ext_path*,int ,int) ;
 void* nofree ;
 struct ext4_ext_path* read_extent_tree_block (struct inode*,int ,int,int ) ;
 scalar_t__ tofree ;
 int trace_ext4_ext_remove_space (struct inode*,int,int,int) ;
 int trace_ext4_ext_remove_space_done (struct inode*,int,int,int,struct partial_cluster*,scalar_t__) ;

int ext4_ext_remove_space(struct inode *inode, ext4_lblk_t start,
     ext4_lblk_t end)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 int depth = ext_depth(inode);
 struct ext4_ext_path *path = ((void*)0);
 struct partial_cluster partial;
 handle_t *handle;
 int i = 0, err = 0;

 partial.pclu = 0;
 partial.lblk = 0;
 partial.state = initial;

 ext_debug("truncate since %u to %u\n", start, end);


 handle = ext4_journal_start(inode, EXT4_HT_TRUNCATE, depth + 1);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

again:
 trace_ext4_ext_remove_space(inode, start, end, depth);
 if (end < EXT_MAX_BLOCKS - 1) {
  struct ext4_extent *ex;
  ext4_lblk_t ee_block, ex_end, lblk;
  ext4_fsblk_t pblk;


  path = ext4_find_extent(inode, end, ((void*)0), EXT4_EX_NOCACHE);
  if (IS_ERR(path)) {
   ext4_journal_stop(handle);
   return PTR_ERR(path);
  }
  depth = ext_depth(inode);

  ex = path[depth].p_ext;
  if (!ex) {
   if (depth) {
    EXT4_ERROR_INODE(inode,
       "path[%d].p_hdr == NULL",
       depth);
    err = -EFSCORRUPTED;
   }
   goto out;
  }

  ee_block = le32_to_cpu(ex->ee_block);
  ex_end = ee_block + ext4_ext_get_actual_len(ex) - 1;







  if (end >= ee_block && end < ex_end) {






   if (sbi->s_cluster_ratio > 1) {
    pblk = ext4_ext_pblock(ex) + end - ee_block + 2;
    partial.pclu = EXT4_B2C(sbi, pblk);
    partial.state = nofree;
   }







   err = ext4_force_split_extent_at(handle, inode, &path,
        end + 1, 1);
   if (err < 0)
    goto out;

  } else if (sbi->s_cluster_ratio > 1 && end >= ex_end &&
      partial.state == initial) {
   lblk = ex_end + 1;
   err = ext4_ext_search_right(inode, path, &lblk, &pblk,
          &ex);
   if (err)
    goto out;
   if (pblk) {
    partial.pclu = EXT4_B2C(sbi, pblk);
    partial.state = nofree;
   }
  }
 }




 depth = ext_depth(inode);
 if (path) {
  int k = i = depth;
  while (--k > 0)
   path[k].p_block =
    le16_to_cpu(path[k].p_hdr->eh_entries)+1;
 } else {
  path = kcalloc(depth + 1, sizeof(struct ext4_ext_path),
          GFP_NOFS);
  if (path == ((void*)0)) {
   ext4_journal_stop(handle);
   return -ENOMEM;
  }
  path[0].p_maxdepth = path[0].p_depth = depth;
  path[0].p_hdr = ext_inode_hdr(inode);
  i = 0;

  if (ext4_ext_check(inode, path[0].p_hdr, depth, 0)) {
   err = -EFSCORRUPTED;
   goto out;
  }
 }
 err = 0;

 while (i >= 0 && err == 0) {
  if (i == depth) {

   err = ext4_ext_rm_leaf(handle, inode, path,
            &partial, start, end);

   brelse(path[i].p_bh);
   path[i].p_bh = ((void*)0);
   i--;
   continue;
  }


  if (!path[i].p_hdr) {
   ext_debug("initialize header\n");
   path[i].p_hdr = ext_block_hdr(path[i].p_bh);
  }

  if (!path[i].p_idx) {

   path[i].p_idx = EXT_LAST_INDEX(path[i].p_hdr);
   path[i].p_block = le16_to_cpu(path[i].p_hdr->eh_entries)+1;
   ext_debug("init index ptr: hdr 0x%p, num %d\n",
      path[i].p_hdr,
      le16_to_cpu(path[i].p_hdr->eh_entries));
  } else {

   path[i].p_idx--;
  }

  ext_debug("level %d - index, first 0x%p, cur 0x%p\n",
    i, EXT_FIRST_INDEX(path[i].p_hdr),
    path[i].p_idx);
  if (ext4_ext_more_to_rm(path + i)) {
   struct buffer_head *bh;

   ext_debug("move to level %d (block %llu)\n",
      i + 1, ext4_idx_pblock(path[i].p_idx));
   memset(path + i + 1, 0, sizeof(*path));
   bh = read_extent_tree_block(inode,
    ext4_idx_pblock(path[i].p_idx), depth - i - 1,
    EXT4_EX_NOCACHE);
   if (IS_ERR(bh)) {

    err = PTR_ERR(bh);
    break;
   }


   cond_resched();
   if (WARN_ON(i + 1 > depth)) {
    err = -EFSCORRUPTED;
    break;
   }
   path[i + 1].p_bh = bh;



   path[i].p_block = le16_to_cpu(path[i].p_hdr->eh_entries);
   i++;
  } else {

   if (path[i].p_hdr->eh_entries == 0 && i > 0) {



    err = ext4_ext_rm_idx(handle, inode, path, i);
   }

   brelse(path[i].p_bh);
   path[i].p_bh = ((void*)0);
   i--;
   ext_debug("return to level %d\n", i);
  }
 }

 trace_ext4_ext_remove_space_done(inode, start, end, depth, &partial,
      path->p_hdr->eh_entries);





 if (partial.state == tofree && err == 0) {
  int flags = get_default_free_blocks_flags(inode);

  if (ext4_is_pending(inode, partial.lblk))
   flags |= EXT4_FREE_BLOCKS_RERESERVE_CLUSTER;
  ext4_free_blocks(handle, inode, ((void*)0),
     EXT4_C2B(sbi, partial.pclu),
     sbi->s_cluster_ratio, flags);
  if (flags & EXT4_FREE_BLOCKS_RERESERVE_CLUSTER)
   ext4_rereserve_cluster(inode, partial.lblk);
  partial.state = initial;
 }


 if (path->p_hdr->eh_entries == 0) {




  err = ext4_ext_get_access(handle, inode, path);
  if (err == 0) {
   ext_inode_hdr(inode)->eh_depth = 0;
   ext_inode_hdr(inode)->eh_max =
    cpu_to_le16(ext4_ext_space_root(inode, 0));
   err = ext4_ext_dirty(handle, inode, path);
  }
 }
out:
 ext4_ext_drop_refs(path);
 kfree(path);
 path = ((void*)0);
 if (err == -EAGAIN)
  goto again;
 ext4_journal_stop(handle);

 return err;
}
