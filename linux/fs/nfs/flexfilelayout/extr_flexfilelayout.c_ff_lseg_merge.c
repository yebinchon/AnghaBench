
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ iomode; scalar_t__ offset; int length; } ;
struct pnfs_layout_segment {int pls_flags; TYPE_1__ pls_range; } ;


 int NFS_LSEG_LAYOUTRETURN ;
 int NFS_LSEG_ROC ;
 scalar_t__ pnfs_calc_offset_end (scalar_t__,int ) ;
 int pnfs_calc_offset_length (scalar_t__,scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool
ff_lseg_merge(struct pnfs_layout_segment *new,
  struct pnfs_layout_segment *old)
{
 u64 new_end, old_end;

 if (test_bit(NFS_LSEG_LAYOUTRETURN, &old->pls_flags))
  return 0;
 if (new->pls_range.iomode != old->pls_range.iomode)
  return 0;
 old_end = pnfs_calc_offset_end(old->pls_range.offset,
   old->pls_range.length);
 if (old_end < new->pls_range.offset)
  return 0;
 new_end = pnfs_calc_offset_end(new->pls_range.offset,
   new->pls_range.length);
 if (new_end < old->pls_range.offset)
  return 0;


 if (new_end < old_end)
  new_end = old_end;
 if (new->pls_range.offset < old->pls_range.offset)
  new->pls_range.offset = old->pls_range.offset;
 new->pls_range.length = pnfs_calc_offset_length(new->pls_range.offset,
   new_end);
 if (test_bit(NFS_LSEG_ROC, &old->pls_flags))
  set_bit(NFS_LSEG_ROC, &new->pls_flags);
 return 1;
}
