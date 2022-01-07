
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_dir2_leaf_t ;
struct TYPE_7__ {struct xfs_inode* dp; } ;
typedef TYPE_2__ xfs_da_args_t ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int stale; int count; } ;
struct xfs_dir2_leaf_entry {scalar_t__ address; } ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_6__ {int (* leaf_hdr_to_disk ) (int *,struct xfs_dir3_icleaf_hdr*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;} ;


 int ASSERT (int) ;
 int XFS_DIR2_NULL_DATAPTR ;
 scalar_t__ cpu_to_be32 (int ) ;
 struct xfs_dir2_leaf_entry* stub1 (int *) ;
 int stub2 (int *,struct xfs_dir3_icleaf_hdr*) ;
 int xfs_dir3_leaf_log_ents (TYPE_2__*,struct xfs_buf*,int,int) ;
 int xfs_dir3_leaf_log_header (TYPE_2__*,struct xfs_buf*) ;

void
xfs_dir3_leaf_compact(
 xfs_da_args_t *args,
 struct xfs_dir3_icleaf_hdr *leafhdr,
 struct xfs_buf *bp)
{
 int from;
 xfs_dir2_leaf_t *leaf;
 int loglow;
 int to;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_inode *dp = args->dp;

 leaf = bp->b_addr;
 if (!leafhdr->stale)
  return;




 ents = dp->d_ops->leaf_ents_p(leaf);
 for (from = to = 0, loglow = -1; from < leafhdr->count; from++) {
  if (ents[from].address == cpu_to_be32(XFS_DIR2_NULL_DATAPTR))
   continue;



  if (from > to) {
   if (loglow == -1)
    loglow = to;
   ents[to] = ents[from];
  }
  to++;
 }



 ASSERT(leafhdr->stale == from - to);
 leafhdr->count -= leafhdr->stale;
 leafhdr->stale = 0;

 dp->d_ops->leaf_hdr_to_disk(leaf, leafhdr);
 xfs_dir3_leaf_log_header(args, bp);
 if (loglow != -1)
  xfs_dir3_leaf_log_ents(args, bp, loglow, to - 1);
}
