
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {scalar_t__ bpr_ptr; } ;
struct nilfs_bmap {int b_inode; } ;
struct inode {int dummy; } ;
typedef scalar_t__ __u64 ;


 int ENOENT ;
 scalar_t__ NILFS_BMAP_INVALID_PTR ;
 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 scalar_t__ NILFS_DIRECT_KEY_MAX ;
 int nilfs_bmap_commit_end_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_bmap_prepare_end_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 scalar_t__ nilfs_direct_get_ptr (struct nilfs_bmap*,scalar_t__) ;
 int nilfs_direct_set_ptr (struct nilfs_bmap*,scalar_t__,scalar_t__) ;
 int nilfs_inode_sub_blocks (int ,int) ;

__attribute__((used)) static int nilfs_direct_delete(struct nilfs_bmap *bmap, __u64 key)
{
 union nilfs_bmap_ptr_req req;
 struct inode *dat;
 int ret;

 if (key > NILFS_DIRECT_KEY_MAX ||
     nilfs_direct_get_ptr(bmap, key) == NILFS_BMAP_INVALID_PTR)
  return -ENOENT;

 dat = NILFS_BMAP_USE_VBN(bmap) ? nilfs_bmap_get_dat(bmap) : ((void*)0);
 req.bpr_ptr = nilfs_direct_get_ptr(bmap, key);

 ret = nilfs_bmap_prepare_end_ptr(bmap, &req, dat);
 if (!ret) {
  nilfs_bmap_commit_end_ptr(bmap, &req, dat);
  nilfs_direct_set_ptr(bmap, key, NILFS_BMAP_INVALID_PTR);
  nilfs_inode_sub_blocks(bmap->b_inode, 1);
 }
 return ret;
}
