
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dsaddr; } ;
struct TYPE_3__ {size_t* stripe_indices; } ;


 TYPE_2__* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;

u32
nfs4_fl_calc_ds_index(struct pnfs_layout_segment *lseg, u32 j)
{
 return FILELAYOUT_LSEG(lseg)->dsaddr->stripe_indices[j];
}
