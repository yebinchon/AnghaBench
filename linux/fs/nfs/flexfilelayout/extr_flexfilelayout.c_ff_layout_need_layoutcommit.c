
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int FF_FLAGS_NO_LAYOUTCOMMIT ;
 TYPE_1__* FF_LAYOUT_LSEG (struct pnfs_layout_segment*) ;

__attribute__((used)) static bool
ff_layout_need_layoutcommit(struct pnfs_layout_segment *lseg)
{
 return !(FF_LAYOUT_LSEG(lseg)->flags & FF_FLAGS_NO_LAYOUTCOMMIT);
}
