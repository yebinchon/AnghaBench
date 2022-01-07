
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iomode; } ;
struct pnfs_layout_segment {TYPE_1__ pls_range; int pls_layout; } ;


 int pnfs_layout_io_set_failed (int ,int ) ;

void pnfs_set_lo_fail(struct pnfs_layout_segment *lseg)
{
 pnfs_layout_io_set_failed(lseg->pls_layout, lseg->pls_range.iomode);
}
