
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir3_icleaf_hdr {int stale; int count; } ;
struct xfs_dir2_leaf_entry {scalar_t__ address; } ;


 int ASSERT (int) ;
 int XFS_DIR2_NULL_DATAPTR ;
 scalar_t__ cpu_to_be32 (int ) ;
 int xfs_dir3_leaf_find_stale (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int,int*,int*) ;

void
xfs_dir3_leaf_compact_x1(
 struct xfs_dir3_icleaf_hdr *leafhdr,
 struct xfs_dir2_leaf_entry *ents,
 int *indexp,
 int *lowstalep,
 int *highstalep,
 int *lowlogp,
 int *highlogp)
{
 int from;
 int highstale;
 int index;
 int keepstale;
 int lowstale;
 int newindex=0;
 int to;

 ASSERT(leafhdr->stale > 1);
 index = *indexp;

 xfs_dir3_leaf_find_stale(leafhdr, ents, index, &lowstale, &highstale);




 if (lowstale >= 0 &&
     (highstale == leafhdr->count ||
      index - lowstale <= highstale - index))
  keepstale = lowstale;
 else
  keepstale = highstale;




 for (from = to = 0; from < leafhdr->count; from++) {



  if (index == from)
   newindex = to;
  if (from != keepstale &&
      ents[from].address == cpu_to_be32(XFS_DIR2_NULL_DATAPTR)) {
   if (from == to)
    *lowlogp = to;
   continue;
  }



  if (from == keepstale)
   lowstale = highstale = to;



  if (from > to)
   ents[to] = ents[from];
  to++;
 }
 ASSERT(from > to);




 if (index == from)
  newindex = to;
 *indexp = newindex;



 leafhdr->count -= from - to;
 leafhdr->stale = 1;




 if (lowstale >= newindex)
  lowstale = -1;
 else
  highstale = leafhdr->count;
 *highlogp = leafhdr->count - 1;
 *lowstalep = lowstale;
 *highstalep = highstale;
}
