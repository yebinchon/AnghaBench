
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int dummy; } ;


 scalar_t__ ff_layout_has_available_ds (struct pnfs_layout_segment*) ;
 scalar_t__ ff_layout_no_fallback_to_mds (struct pnfs_layout_segment*) ;

bool ff_layout_avoid_mds_available_ds(struct pnfs_layout_segment *lseg)
{
 return ff_layout_no_fallback_to_mds(lseg) ||
        ff_layout_has_available_ds(lseg);
}
