
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_range {int iomode; scalar_t__ offset; scalar_t__ length; } ;




 scalar_t__ NFS4_MAX_UINT64 ;

__attribute__((used)) static bool
pnfs_sanity_check_layout_range(struct pnfs_layout_range *range)
{
 switch (range->iomode) {
 case 129:
 case 128:
  break;
 default:
  return 0;
 }
 if (range->offset == NFS4_MAX_UINT64)
  return 0;
 if (range->length == 0)
  return 0;
 if (range->length != NFS4_MAX_UINT64 &&
     range->length > NFS4_MAX_UINT64 - range->offset)
  return 0;
 return 1;
}
