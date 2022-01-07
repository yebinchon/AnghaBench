
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nilfs_btree_readahead_info {int max_ra_blocks; int index; int ncmax; int node; } ;
struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct buffer_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef int sector_t ;
typedef scalar_t__ __u64 ;
struct TYPE_4__ {struct address_space i_btnode_cache; } ;
struct TYPE_3__ {int i_ino; int i_sb; } ;


 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int EIO ;
 int KERN_ERR ;
 TYPE_2__* NILFS_BMAP_I (struct nilfs_bmap const*) ;
 int REQ_OP_READ ;
 int REQ_RAHEAD ;
 int brelse (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 scalar_t__ likely (int) ;
 int nilfs_btnode_submit_block (struct address_space*,scalar_t__,int ,int ,int ,struct buffer_head**,int *) ;
 scalar_t__ nilfs_btree_broken_node_block (struct buffer_head*) ;
 scalar_t__ nilfs_btree_node_get_ptr (int ,int,int) ;
 int nilfs_msg (int ,int ,char*,int ,unsigned long long) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int __nilfs_btree_get_block(const struct nilfs_bmap *btree, __u64 ptr,
       struct buffer_head **bhp,
       const struct nilfs_btree_readahead_info *ra)
{
 struct address_space *btnc = &NILFS_BMAP_I(btree)->i_btnode_cache;
 struct buffer_head *bh, *ra_bh;
 sector_t submit_ptr = 0;
 int ret;

 ret = nilfs_btnode_submit_block(btnc, ptr, 0, REQ_OP_READ, 0, &bh,
     &submit_ptr);
 if (ret) {
  if (ret != -EEXIST)
   return ret;
  goto out_check;
 }

 if (ra) {
  int i, n;
  __u64 ptr2;


  for (n = ra->max_ra_blocks, i = ra->index + 1;
       n > 0 && i < ra->ncmax; n--, i++) {
   ptr2 = nilfs_btree_node_get_ptr(ra->node, i, ra->ncmax);

   ret = nilfs_btnode_submit_block(btnc, ptr2, 0,
       REQ_OP_READ, REQ_RAHEAD,
       &ra_bh, &submit_ptr);
   if (likely(!ret || ret == -EEXIST))
    brelse(ra_bh);
   else if (ret != -EBUSY)
    break;
   if (!buffer_locked(bh))
    goto out_no_wait;
  }
 }

 wait_on_buffer(bh);

 out_no_wait:
 if (!buffer_uptodate(bh)) {
  nilfs_msg(btree->b_inode->i_sb, KERN_ERR,
     "I/O error reading b-tree node block (ino=%lu, blocknr=%llu)",
     btree->b_inode->i_ino, (unsigned long long)ptr);
  brelse(bh);
  return -EIO;
 }

 out_check:
 if (nilfs_btree_broken_node_block(bh)) {
  clear_buffer_uptodate(bh);
  brelse(bh);
  return -EINVAL;
 }

 *bhp = bh;
 return 0;
}
