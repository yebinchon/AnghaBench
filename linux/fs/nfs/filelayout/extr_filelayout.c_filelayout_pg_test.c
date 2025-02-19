
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct nfs_pageio_descriptor {TYPE_3__* pg_lseg; } ;
struct nfs_page {int dummy; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__ pls_range; } ;
struct TYPE_5__ {scalar_t__ stripe_unit; } ;


 TYPE_2__* FILELAYOUT_LSEG (TYPE_3__*) ;
 int WARN_ON_ONCE (int) ;
 int div_u64_rem (scalar_t__,scalar_t__,scalar_t__*) ;
 int do_div (scalar_t__,scalar_t__) ;
 size_t min (scalar_t__,unsigned int) ;
 unsigned int pnfs_generic_pg_test (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;
 scalar_t__ req_offset (struct nfs_page*) ;

__attribute__((used)) static size_t
filelayout_pg_test(struct nfs_pageio_descriptor *pgio, struct nfs_page *prev,
     struct nfs_page *req)
{
 unsigned int size;
 u64 p_stripe, r_stripe;
 u32 stripe_offset;
 u64 segment_offset = pgio->pg_lseg->pls_range.offset;
 u32 stripe_unit = FILELAYOUT_LSEG(pgio->pg_lseg)->stripe_unit;


 size = pnfs_generic_pg_test(pgio, prev, req);
 if (!size)
  return 0;


 if (prev) {
  p_stripe = (u64)req_offset(prev) - segment_offset;
  r_stripe = (u64)req_offset(req) - segment_offset;
  do_div(p_stripe, stripe_unit);
  do_div(r_stripe, stripe_unit);

  if (p_stripe != r_stripe)
   return 0;
 }


 div_u64_rem((u64)req_offset(req) - segment_offset,
   stripe_unit,
   &stripe_offset);
 WARN_ON_ONCE(stripe_offset > stripe_unit);
 if (stripe_offset >= stripe_unit)
  return 0;
 return min(stripe_unit - (unsigned int)stripe_offset, size);
}
