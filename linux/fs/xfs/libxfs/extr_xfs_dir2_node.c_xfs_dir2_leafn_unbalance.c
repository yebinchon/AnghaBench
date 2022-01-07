
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int xfs_dir2_leaf_t ;
struct TYPE_19__ {TYPE_4__* args; } ;
typedef TYPE_2__ xfs_da_state_t ;
struct TYPE_20__ {scalar_t__ magic; TYPE_6__* bp; void* hashval; } ;
typedef TYPE_3__ xfs_da_state_blk_t ;
struct TYPE_21__ {struct xfs_inode* dp; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int count; scalar_t__ stale; } ;
struct xfs_dir2_leaf_entry {int hashval; } ;
struct TYPE_22__ {int * b_addr; } ;
struct TYPE_18__ {int (* leaf_hdr_to_disk ) (int *,struct xfs_dir3_icleaf_hdr*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int *) ;} ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 void* be32_to_cpu (int ) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,int *) ;
 int stub2 (struct xfs_dir3_icleaf_hdr*,int *) ;
 struct xfs_dir2_leaf_entry* stub3 (int *) ;
 struct xfs_dir2_leaf_entry* stub4 (int *) ;
 int stub5 (int *,struct xfs_dir3_icleaf_hdr*) ;
 int stub6 (int *,struct xfs_dir3_icleaf_hdr*) ;
 scalar_t__ xfs_dir2_leafn_order (struct xfs_inode*,TYPE_6__*,TYPE_6__*) ;
 int xfs_dir3_leaf_check (struct xfs_inode*,TYPE_6__*) ;
 int xfs_dir3_leaf_compact (TYPE_4__*,struct xfs_dir3_icleaf_hdr*,TYPE_6__*) ;
 int xfs_dir3_leaf_log_header (TYPE_4__*,TYPE_6__*) ;
 int xfs_dir3_leafn_moveents (TYPE_4__*,TYPE_6__*,struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int ,TYPE_6__*,struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int,int) ;

void
xfs_dir2_leafn_unbalance(
 xfs_da_state_t *state,
 xfs_da_state_blk_t *drop_blk,
 xfs_da_state_blk_t *save_blk)
{
 xfs_da_args_t *args;
 xfs_dir2_leaf_t *drop_leaf;
 xfs_dir2_leaf_t *save_leaf;
 struct xfs_dir3_icleaf_hdr savehdr;
 struct xfs_dir3_icleaf_hdr drophdr;
 struct xfs_dir2_leaf_entry *sents;
 struct xfs_dir2_leaf_entry *dents;
 struct xfs_inode *dp = state->args->dp;

 args = state->args;
 ASSERT(drop_blk->magic == XFS_DIR2_LEAFN_MAGIC);
 ASSERT(save_blk->magic == XFS_DIR2_LEAFN_MAGIC);
 drop_leaf = drop_blk->bp->b_addr;
 save_leaf = save_blk->bp->b_addr;

 dp->d_ops->leaf_hdr_from_disk(&savehdr, save_leaf);
 dp->d_ops->leaf_hdr_from_disk(&drophdr, drop_leaf);
 sents = dp->d_ops->leaf_ents_p(save_leaf);
 dents = dp->d_ops->leaf_ents_p(drop_leaf);





 if (drophdr.stale)
  xfs_dir3_leaf_compact(args, &drophdr, drop_blk->bp);
 if (savehdr.stale)
  xfs_dir3_leaf_compact(args, &savehdr, save_blk->bp);




 drop_blk->hashval = be32_to_cpu(dents[drophdr.count - 1].hashval);
 if (xfs_dir2_leafn_order(dp, save_blk->bp, drop_blk->bp))
  xfs_dir3_leafn_moveents(args, drop_blk->bp, &drophdr, dents, 0,
     save_blk->bp, &savehdr, sents, 0,
     drophdr.count);
 else
  xfs_dir3_leafn_moveents(args, drop_blk->bp, &drophdr, dents, 0,
     save_blk->bp, &savehdr, sents,
     savehdr.count, drophdr.count);
 save_blk->hashval = be32_to_cpu(sents[savehdr.count - 1].hashval);


 dp->d_ops->leaf_hdr_to_disk(save_leaf, &savehdr);
 dp->d_ops->leaf_hdr_to_disk(drop_leaf, &drophdr);
 xfs_dir3_leaf_log_header(args, save_blk->bp);
 xfs_dir3_leaf_log_header(args, drop_blk->bp);

 xfs_dir3_leaf_check(dp, save_blk->bp);
 xfs_dir3_leaf_check(dp, drop_blk->bp);
}
