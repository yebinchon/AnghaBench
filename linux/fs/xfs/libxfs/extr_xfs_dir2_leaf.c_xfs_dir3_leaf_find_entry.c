
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_leaf_entry {scalar_t__ address; } ;
typedef struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
struct xfs_dir3_icleaf_hdr {int count; int stale; } ;


 int ASSERT (int) ;
 int XFS_DIR2_NULL_DATAPTR ;
 scalar_t__ cpu_to_be32 (int ) ;
 int max (int,int) ;
 int memmove (struct xfs_dir2_leaf_entry*,struct xfs_dir2_leaf_entry*,int) ;
 int min (int,int) ;
 int xfs_dir3_leaf_find_stale (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int,int*,int*) ;

struct xfs_dir2_leaf_entry *
xfs_dir3_leaf_find_entry(
 struct xfs_dir3_icleaf_hdr *leafhdr,
 struct xfs_dir2_leaf_entry *ents,
 int index,
 int compact,
 int lowstale,
 int highstale,
 int *lfloglow,
 int *lfloghigh)
{
 if (!leafhdr->stale) {
  xfs_dir2_leaf_entry_t *lep;






  lep = &ents[index];
  if (index < leafhdr->count)
   memmove(lep + 1, lep,
    (leafhdr->count - index) * sizeof(*lep));




  *lfloglow = index;
  *lfloghigh = leafhdr->count++;
  return lep;
 }
 if (compact == 0)
  xfs_dir3_leaf_find_stale(leafhdr, ents, index,
      &lowstale, &highstale);




 if (lowstale >= 0 &&
     (highstale == leafhdr->count ||
      index - lowstale - 1 < highstale - index)) {
  ASSERT(index - lowstale - 1 >= 0);
  ASSERT(ents[lowstale].address ==
         cpu_to_be32(XFS_DIR2_NULL_DATAPTR));





  if (index - lowstale - 1 > 0) {
   memmove(&ents[lowstale], &ents[lowstale + 1],
    (index - lowstale - 1) *
     sizeof(xfs_dir2_leaf_entry_t));
  }
  *lfloglow = min(lowstale, *lfloglow);
  *lfloghigh = max(index - 1, *lfloghigh);
  leafhdr->stale--;
  return &ents[index - 1];
 }




 ASSERT(highstale - index >= 0);
 ASSERT(ents[highstale].address == cpu_to_be32(XFS_DIR2_NULL_DATAPTR));





 if (highstale - index > 0) {
  memmove(&ents[index + 1], &ents[index],
   (highstale - index) * sizeof(xfs_dir2_leaf_entry_t));
 }
 *lfloglow = min(index, *lfloglow);
 *lfloghigh = max(highstale, *lfloghigh);
 leafhdr->stale--;
 return &ents[index];
}
