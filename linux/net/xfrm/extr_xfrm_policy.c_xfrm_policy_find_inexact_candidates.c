
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u16 ;
struct xfrm_pol_inexact_node {int hhead; int root; } ;
struct xfrm_pol_inexact_candidates {int ** res; } ;
struct TYPE_2__ {int family; } ;
struct xfrm_pol_inexact_bin {int count; int root_s; int root_d; int hhead; TYPE_1__ k; } ;


 size_t XFRM_POL_CAND_ANY ;
 size_t XFRM_POL_CAND_BOTH ;
 size_t XFRM_POL_CAND_DADDR ;
 size_t XFRM_POL_CAND_SADDR ;
 int memset (struct xfrm_pol_inexact_candidates*,int ,int) ;
 struct xfrm_pol_inexact_node* xfrm_policy_lookup_inexact_addr (int *,int *,int const*,int ) ;

__attribute__((used)) static bool
xfrm_policy_find_inexact_candidates(struct xfrm_pol_inexact_candidates *cand,
        struct xfrm_pol_inexact_bin *b,
        const xfrm_address_t *saddr,
        const xfrm_address_t *daddr)
{
 struct xfrm_pol_inexact_node *n;
 u16 family;

 if (!b)
  return 0;

 family = b->k.family;
 memset(cand, 0, sizeof(*cand));
 cand->res[XFRM_POL_CAND_ANY] = &b->hhead;

 n = xfrm_policy_lookup_inexact_addr(&b->root_d, &b->count, daddr,
         family);
 if (n) {
  cand->res[XFRM_POL_CAND_DADDR] = &n->hhead;
  n = xfrm_policy_lookup_inexact_addr(&n->root, &b->count, saddr,
          family);
  if (n)
   cand->res[XFRM_POL_CAND_BOTH] = &n->hhead;
 }

 n = xfrm_policy_lookup_inexact_addr(&b->root_s, &b->count, saddr,
         family);
 if (n)
  cand->res[XFRM_POL_CAND_SADDR] = &n->hhead;

 return 1;
}
