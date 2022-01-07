
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_fsmap {int fmr_length; int fmr_offset; int fmr_owner; int fmr_physical; int fmr_flags; int fmr_device; } ;
struct fsmap {scalar_t__* fmr_reserved; void* fmr_length; void* fmr_offset; int fmr_owner; void* fmr_physical; int fmr_flags; int fmr_device; } ;


 void* BBTOB (int ) ;

void
xfs_fsmap_from_internal(
 struct fsmap *dest,
 struct xfs_fsmap *src)
{
 dest->fmr_device = src->fmr_device;
 dest->fmr_flags = src->fmr_flags;
 dest->fmr_physical = BBTOB(src->fmr_physical);
 dest->fmr_owner = src->fmr_owner;
 dest->fmr_offset = BBTOB(src->fmr_offset);
 dest->fmr_length = BBTOB(src->fmr_length);
 dest->fmr_reserved[0] = 0;
 dest->fmr_reserved[1] = 0;
 dest->fmr_reserved[2] = 0;
}
