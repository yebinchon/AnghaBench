
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_dir2_db_t ;
struct TYPE_8__ {scalar_t__ total; struct xfs_inode* dp; } ;
typedef TYPE_2__ xfs_da_args_t ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icfree_hdr {int nvalid; int nused; } ;
struct xfs_dir2_free {int dummy; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct xfs_buf {int dummy; } ;
typedef int __be16 ;
struct TYPE_7__ {int (* free_hdr_to_disk ) (struct xfs_dir2_free*,struct xfs_dir3_icfree_hdr*) ;int * (* free_bests_p ) (struct xfs_dir2_free*) ;int (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ;} ;


 int ENOSPC ;
 int NULLDATAOFF ;
 int cpu_to_be16 (int) ;
 int stub1 (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ;
 int * stub2 (struct xfs_dir2_free*) ;
 int stub3 (struct xfs_dir2_free*,struct xfs_dir3_icfree_hdr*) ;
 int xfs_dir2_free_log_bests (TYPE_2__*,struct xfs_buf*,int,int) ;
 int xfs_dir2_free_log_header (TYPE_2__*,struct xfs_buf*) ;
 int xfs_dir2_shrink_inode (TYPE_2__*,int ,struct xfs_buf*) ;

__attribute__((used)) static int
xfs_dir3_data_block_free(
 xfs_da_args_t *args,
 struct xfs_dir2_data_hdr *hdr,
 struct xfs_dir2_free *free,
 xfs_dir2_db_t fdb,
 int findex,
 struct xfs_buf *fbp,
 int longest)
{
 int logfree = 0;
 __be16 *bests;
 struct xfs_dir3_icfree_hdr freehdr;
 struct xfs_inode *dp = args->dp;

 dp->d_ops->free_hdr_from_disk(&freehdr, free);
 bests = dp->d_ops->free_bests_p(free);
 if (hdr) {




  bests[findex] = cpu_to_be16(longest);
  xfs_dir2_free_log_bests(args, fbp, findex, findex);
  return 0;
 }


 freehdr.nused--;






 if (findex == freehdr.nvalid - 1) {
  int i;

  for (i = findex - 1; i >= 0; i--) {
   if (bests[i] != cpu_to_be16(NULLDATAOFF))
    break;
  }
  freehdr.nvalid = i + 1;
  logfree = 0;
 } else {

  bests[findex] = cpu_to_be16(NULLDATAOFF);
  logfree = 1;
 }

 dp->d_ops->free_hdr_to_disk(free, &freehdr);
 xfs_dir2_free_log_header(args, fbp);





 if (!freehdr.nused) {
  int error;

  error = xfs_dir2_shrink_inode(args, fdb, fbp);
  if (error == 0) {
   fbp = ((void*)0);
   logfree = 0;
  } else if (error != -ENOSPC || args->total != 0)
   return error;





 }


 if (logfree)
  xfs_dir2_free_log_bests(args, fbp, findex, findex);
 return 0;
}
