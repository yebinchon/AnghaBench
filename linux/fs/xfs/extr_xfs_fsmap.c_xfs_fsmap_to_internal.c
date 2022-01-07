
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_fsmap {void* fmr_length; void* fmr_offset; int fmr_owner; void* fmr_physical; int fmr_flags; int fmr_device; } ;
struct fsmap {int fmr_length; int fmr_offset; int fmr_owner; int fmr_physical; int fmr_flags; int fmr_device; } ;


 void* BTOBBT (int ) ;

void
xfs_fsmap_to_internal(
 struct xfs_fsmap *dest,
 struct fsmap *src)
{
 dest->fmr_device = src->fmr_device;
 dest->fmr_flags = src->fmr_flags;
 dest->fmr_physical = BTOBBT(src->fmr_physical);
 dest->fmr_owner = src->fmr_owner;
 dest->fmr_offset = BTOBBT(src->fmr_offset);
 dest->fmr_length = BTOBBT(src->fmr_length);
}
