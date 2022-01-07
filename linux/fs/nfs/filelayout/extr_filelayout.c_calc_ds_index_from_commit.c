
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs4_filelayout_segment {scalar_t__ stripe_type; } ;


 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;
 scalar_t__ STRIPE_SPARSE ;
 int nfs4_fl_calc_ds_index (struct pnfs_layout_segment*,int ) ;

__attribute__((used)) static u32 calc_ds_index_from_commit(struct pnfs_layout_segment *lseg, u32 i)
{
 struct nfs4_filelayout_segment *flseg = FILELAYOUT_LSEG(lseg);

 if (flseg->stripe_type == STRIPE_SPARSE)
  return i;
 else
  return nfs4_fl_calc_ds_index(lseg, i);
}
