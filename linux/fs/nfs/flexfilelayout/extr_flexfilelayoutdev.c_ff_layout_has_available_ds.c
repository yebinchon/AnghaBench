
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iomode; } ;
struct pnfs_layout_segment {TYPE_1__ pls_range; } ;


 scalar_t__ IOMODE_READ ;
 int ff_read_layout_has_available_ds (struct pnfs_layout_segment*) ;
 int ff_rw_layout_has_available_ds (struct pnfs_layout_segment*) ;

__attribute__((used)) static bool ff_layout_has_available_ds(struct pnfs_layout_segment *lseg)
{
 if (lseg->pls_range.iomode == IOMODE_READ)
  return ff_read_layout_has_available_ds(lseg);

 return ff_rw_layout_has_available_ds(lseg);
}
