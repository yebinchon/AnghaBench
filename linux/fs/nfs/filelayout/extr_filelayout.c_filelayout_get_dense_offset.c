
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nfs4_filelayout_segment {int stripe_unit; scalar_t__ pattern_offset; TYPE_1__* dsaddr; } ;
typedef int loff_t ;
struct TYPE_2__ {int stripe_count; } ;


 int div_u64 (int,int) ;
 int div_u64_rem (int,int,int*) ;

__attribute__((used)) static loff_t
filelayout_get_dense_offset(struct nfs4_filelayout_segment *flseg,
       loff_t offset)
{
 u32 stripe_width = flseg->stripe_unit * flseg->dsaddr->stripe_count;
 u64 stripe_no;
 u32 rem;

 offset -= flseg->pattern_offset;
 stripe_no = div_u64(offset, stripe_width);
 div_u64_rem(offset, flseg->stripe_unit, &rem);

 return stripe_no * flseg->stripe_unit + rem;
}
