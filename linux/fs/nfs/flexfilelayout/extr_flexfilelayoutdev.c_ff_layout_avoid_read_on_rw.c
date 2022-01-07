
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iomode; } ;
struct pnfs_layout_segment {TYPE_1__ pls_range; } ;


 scalar_t__ IOMODE_RW ;
 scalar_t__ ff_layout_no_read_on_rw (struct pnfs_layout_segment*) ;

bool ff_layout_avoid_read_on_rw(struct pnfs_layout_segment *lseg)
{
 return lseg->pls_range.iomode == IOMODE_RW &&
        ff_layout_no_read_on_rw(lseg);
}
