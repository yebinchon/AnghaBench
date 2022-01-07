
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ family; int saddr; } ;
struct xfrm_state {TYPE_1__ props; } ;
typedef int __be32 ;


 scalar_t__ AF_INET ;
 scalar_t__ XFRM_MODE_TUNNEL ;
 int xfrm_addr_equal (int *,int *,scalar_t__) ;
 int xfrm_state_addr_check (struct xfrm_state const*,int *,int *,scalar_t__) ;

__attribute__((used)) static bool vti_state_check(const struct xfrm_state *x, __be32 dst, __be32 src)
{
 xfrm_address_t *daddr = (xfrm_address_t *)&dst;
 xfrm_address_t *saddr = (xfrm_address_t *)&src;




 if (!x || x->props.mode != XFRM_MODE_TUNNEL ||
     x->props.family != AF_INET)
  return 0;

 if (!dst)
  return xfrm_addr_equal(saddr, &x->props.saddr, AF_INET);

 if (!xfrm_state_addr_check(x, daddr, saddr, AF_INET))
  return 0;

 return 1;
}
