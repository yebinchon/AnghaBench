
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int FF_FLAGS_NO_READ_IO ;
 TYPE_1__* FF_LAYOUT_LSEG (struct pnfs_layout_segment*) ;

__attribute__((used)) static inline bool
ff_layout_no_read_on_rw(struct pnfs_layout_segment *lseg)
{
 return FF_LAYOUT_LSEG(lseg)->flags & FF_FLAGS_NO_READ_IO;
}
