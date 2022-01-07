
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dir2_leaf_entry_t ;
typedef int xfs_da_args_t ;
struct xfs_dir3_icleaf_hdr {int count; int stale; } ;
struct xfs_dir2_leaf_entry {scalar_t__ address; } ;
struct xfs_buf {int dummy; } ;


 int XFS_DIR2_NULL_DATAPTR ;
 scalar_t__ cpu_to_be32 (int ) ;
 int memcpy (struct xfs_dir2_leaf_entry*,struct xfs_dir2_leaf_entry*,int) ;
 int memmove (struct xfs_dir2_leaf_entry*,struct xfs_dir2_leaf_entry*,int) ;
 int trace_xfs_dir2_leafn_moveents (int *,int,int,int) ;
 int xfs_dir3_leaf_log_ents (int *,struct xfs_buf*,int,int) ;

__attribute__((used)) static void
xfs_dir3_leafn_moveents(
 xfs_da_args_t *args,
 struct xfs_buf *bp_s,
 struct xfs_dir3_icleaf_hdr *shdr,
 struct xfs_dir2_leaf_entry *sents,
 int start_s,
 struct xfs_buf *bp_d,
 struct xfs_dir3_icleaf_hdr *dhdr,
 struct xfs_dir2_leaf_entry *dents,
 int start_d,
 int count)
{
 int stale;

 trace_xfs_dir2_leafn_moveents(args, start_s, start_d, count);




 if (count == 0)
  return;






 if (start_d < dhdr->count) {
  memmove(&dents[start_d + count], &dents[start_d],
   (dhdr->count - start_d) * sizeof(xfs_dir2_leaf_entry_t));
  xfs_dir3_leaf_log_ents(args, bp_d, start_d + count,
           count + dhdr->count - 1);
 }




 if (shdr->stale) {
  int i;

  for (i = start_s, stale = 0; i < start_s + count; i++) {
   if (sents[i].address ==
     cpu_to_be32(XFS_DIR2_NULL_DATAPTR))
    stale++;
  }
 } else
  stale = 0;



 memcpy(&dents[start_d], &sents[start_s],
  count * sizeof(xfs_dir2_leaf_entry_t));
 xfs_dir3_leaf_log_ents(args, bp_d, start_d, start_d + count - 1);





 if (start_s + count < shdr->count) {
  memmove(&sents[start_s], &sents[start_s + count],
   count * sizeof(xfs_dir2_leaf_entry_t));
  xfs_dir3_leaf_log_ents(args, bp_s, start_s, start_s + count - 1);
 }




 shdr->count -= count;
 shdr->stale -= stale;
 dhdr->count += count;
 dhdr->stale += stale;
}
