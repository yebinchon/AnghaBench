
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {int bpr_ptr; } ;
struct nilfs_bmap {int b_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ __u64 ;


 int EEXIST ;
 int ENOENT ;
 scalar_t__ NILFS_BMAP_INVALID_PTR ;
 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 scalar_t__ NILFS_DIRECT_KEY_MAX ;
 int nilfs_bmap_commit_alloc_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 int nilfs_bmap_dirty (struct nilfs_bmap*) ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_bmap_prepare_alloc_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 int nilfs_bmap_set_dirty (struct nilfs_bmap*) ;
 int nilfs_bmap_set_target_v (struct nilfs_bmap*,scalar_t__,int ) ;
 int nilfs_direct_find_target_v (struct nilfs_bmap*,scalar_t__) ;
 scalar_t__ nilfs_direct_get_ptr (struct nilfs_bmap*,scalar_t__) ;
 int nilfs_direct_set_ptr (struct nilfs_bmap*,scalar_t__,int ) ;
 int nilfs_inode_add_blocks (int ,int) ;
 int set_buffer_nilfs_volatile (struct buffer_head*) ;

__attribute__((used)) static int nilfs_direct_insert(struct nilfs_bmap *bmap, __u64 key, __u64 ptr)
{
 union nilfs_bmap_ptr_req req;
 struct inode *dat = ((void*)0);
 struct buffer_head *bh;
 int ret;

 if (key > NILFS_DIRECT_KEY_MAX)
  return -ENOENT;
 if (nilfs_direct_get_ptr(bmap, key) != NILFS_BMAP_INVALID_PTR)
  return -EEXIST;

 if (NILFS_BMAP_USE_VBN(bmap)) {
  req.bpr_ptr = nilfs_direct_find_target_v(bmap, key);
  dat = nilfs_bmap_get_dat(bmap);
 }
 ret = nilfs_bmap_prepare_alloc_ptr(bmap, &req, dat);
 if (!ret) {

  bh = (struct buffer_head *)((unsigned long)ptr);
  set_buffer_nilfs_volatile(bh);

  nilfs_bmap_commit_alloc_ptr(bmap, &req, dat);
  nilfs_direct_set_ptr(bmap, key, req.bpr_ptr);

  if (!nilfs_bmap_dirty(bmap))
   nilfs_bmap_set_dirty(bmap);

  if (NILFS_BMAP_USE_VBN(bmap))
   nilfs_bmap_set_target_v(bmap, key, req.bpr_ptr);

  nilfs_inode_add_blocks(bmap->b_inode, 1);
 }
 return ret;
}
