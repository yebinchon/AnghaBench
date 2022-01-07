
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_filelayout_segment {scalar_t__ stripe_type; int generic_hdr; } ;


 scalar_t__ STRIPE_SPARSE ;
 int nfs4_fl_calc_ds_index (int *,int ) ;

__attribute__((used)) static u32 select_bucket_index(struct nfs4_filelayout_segment *fl, u32 j)
{
 if (fl->stripe_type == STRIPE_SPARSE)
  return nfs4_fl_calc_ds_index(&fl->generic_hdr, j);
 else
  return j;
}
