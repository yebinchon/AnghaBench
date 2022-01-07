
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int daddr; } ;
struct TYPE_4__ {scalar_t__ family; int saddr; } ;
struct xfrm_state {TYPE_1__ id; TYPE_2__ props; } ;
struct xfrm_address_filter {scalar_t__ family; int dplen; int daddr; int splen; int saddr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ addr_match (int *,int *,int ) ;

__attribute__((used)) static bool __xfrm_state_filter_match(struct xfrm_state *x,
          struct xfrm_address_filter *filter)
{
 if (filter) {
  if ((filter->family == AF_INET ||
       filter->family == AF_INET6) &&
      x->props.family != filter->family)
   return 0;

  return addr_match(&x->props.saddr, &filter->saddr,
      filter->splen) &&
         addr_match(&x->id.daddr, &filter->daddr,
      filter->dplen);
 }
 return 1;
}
