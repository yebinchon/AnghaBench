
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nilfs_bmap_ptr_req {scalar_t__ bpr_ptr; } ;
struct nilfs_bmap_stats {scalar_t__ bs_nblocks; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 int nilfs_bmap_abort_alloc_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 struct inode* nilfs_bmap_get_dat (struct nilfs_bmap*) ;
 int nilfs_bmap_prepare_alloc_ptr (struct nilfs_bmap*,union nilfs_bmap_ptr_req*,struct inode*) ;
 scalar_t__ nilfs_btree_find_target_v (struct nilfs_bmap*,int *,int ) ;
 int nilfs_btree_get_new_block (struct nilfs_bmap*,scalar_t__,struct buffer_head**) ;

__attribute__((used)) static int
nilfs_btree_prepare_convert_and_insert(struct nilfs_bmap *btree, __u64 key,
           union nilfs_bmap_ptr_req *dreq,
           union nilfs_bmap_ptr_req *nreq,
           struct buffer_head **bhp,
           struct nilfs_bmap_stats *stats)
{
 struct buffer_head *bh;
 struct inode *dat = ((void*)0);
 int ret;

 stats->bs_nblocks = 0;



 if (NILFS_BMAP_USE_VBN(btree)) {
  dreq->bpr_ptr = nilfs_btree_find_target_v(btree, ((void*)0), key);
  dat = nilfs_bmap_get_dat(btree);
 }

 ret = nilfs_bmap_prepare_alloc_ptr(btree, dreq, dat);
 if (ret < 0)
  return ret;

 *bhp = ((void*)0);
 stats->bs_nblocks++;
 if (nreq != ((void*)0)) {
  nreq->bpr_ptr = dreq->bpr_ptr + 1;
  ret = nilfs_bmap_prepare_alloc_ptr(btree, nreq, dat);
  if (ret < 0)
   goto err_out_dreq;

  ret = nilfs_btree_get_new_block(btree, nreq->bpr_ptr, &bh);
  if (ret < 0)
   goto err_out_nreq;

  *bhp = bh;
  stats->bs_nblocks++;
 }


 return 0;


 err_out_nreq:
 nilfs_bmap_abort_alloc_ptr(btree, nreq, dat);
 err_out_dreq:
 nilfs_bmap_abort_alloc_ptr(btree, dreq, dat);
 stats->bs_nblocks = 0;
 return ret;

}
