
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int count; int stale; } ;
struct xfs_dir2_leaf_entry {void* address; void* hashval; } ;
struct xfs_dir2_leaf {int dummy; } ;
struct xfs_da_args {scalar_t__ hashval; int op_flags; int index; int blkno; int geo; struct xfs_inode* dp; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
struct TYPE_2__ {int (* leaf_max_ents ) (int ) ;int (* leaf_hdr_to_disk ) (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;} ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int ENOSPC ;
 int XFS_DA_OP_JUSTCHECK ;
 scalar_t__ be32_to_cpu (void*) ;
 void* cpu_to_be32 (scalar_t__) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;
 struct xfs_dir2_leaf_entry* stub2 (struct xfs_dir2_leaf*) ;
 int stub3 (int ) ;
 int stub4 (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ;
 int trace_xfs_dir2_leafn_add (struct xfs_da_args*,int) ;
 scalar_t__ xfs_dir2_db_off_to_dataptr (int ,int ,int ) ;
 int xfs_dir3_leaf_check (struct xfs_inode*,struct xfs_buf*) ;
 int xfs_dir3_leaf_compact_x1 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int*,int*,int*,int*,int*) ;
 struct xfs_dir2_leaf_entry* xfs_dir3_leaf_find_entry (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int,int,int,int,int*,int*) ;
 int xfs_dir3_leaf_log_ents (struct xfs_da_args*,struct xfs_buf*,int,int) ;
 int xfs_dir3_leaf_log_header (struct xfs_da_args*,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_dir2_leafn_add(
 struct xfs_buf *bp,
 struct xfs_da_args *args,
 int index)
{
 struct xfs_dir3_icleaf_hdr leafhdr;
 struct xfs_inode *dp = args->dp;
 struct xfs_dir2_leaf *leaf = bp->b_addr;
 struct xfs_dir2_leaf_entry *lep;
 struct xfs_dir2_leaf_entry *ents;
 int compact;
 int highstale = 0;
 int lfloghigh;
 int lfloglow;
 int lowstale = 0;

 trace_xfs_dir2_leafn_add(args, index);

 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
 ents = dp->d_ops->leaf_ents_p(leaf);





 if (index < 0)
  return -EFSCORRUPTED;
 if (leafhdr.count == dp->d_ops->leaf_max_ents(args->geo)) {
  if (!leafhdr.stale)
   return -ENOSPC;
  compact = leafhdr.stale > 1;
 } else
  compact = 0;
 ASSERT(index == 0 || be32_to_cpu(ents[index - 1].hashval) <= args->hashval);
 ASSERT(index == leafhdr.count ||
        be32_to_cpu(ents[index].hashval) >= args->hashval);

 if (args->op_flags & XFS_DA_OP_JUSTCHECK)
  return 0;





 if (compact)
  xfs_dir3_leaf_compact_x1(&leafhdr, ents, &index, &lowstale,
      &highstale, &lfloglow, &lfloghigh);
 else if (leafhdr.stale) {



  lfloglow = leafhdr.count;
  lfloghigh = -1;
 }




 lep = xfs_dir3_leaf_find_entry(&leafhdr, ents, index, compact, lowstale,
           highstale, &lfloglow, &lfloghigh);

 lep->hashval = cpu_to_be32(args->hashval);
 lep->address = cpu_to_be32(xfs_dir2_db_off_to_dataptr(args->geo,
    args->blkno, args->index));

 dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
 xfs_dir3_leaf_log_header(args, bp);
 xfs_dir3_leaf_log_ents(args, bp, lfloglow, lfloghigh);
 xfs_dir3_leaf_check(dp, bp);
 return 0;
}
