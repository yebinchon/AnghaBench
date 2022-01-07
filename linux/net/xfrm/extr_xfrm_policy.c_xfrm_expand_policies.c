
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xfrm_policy {int xfrm_nr; scalar_t__ action; scalar_t__ type; int if_id; } ;
struct flowi {int dummy; } ;


 scalar_t__ IS_ERR (struct xfrm_policy*) ;
 int PTR_ERR (struct xfrm_policy*) ;
 scalar_t__ XFRM_POLICY_ALLOW ;
 int XFRM_POLICY_OUT ;
 scalar_t__ XFRM_POLICY_TYPE_MAIN ;
 struct xfrm_policy* xfrm_policy_lookup_bytype (int ,scalar_t__,struct flowi const*,int ,int ,int ) ;
 int xfrm_pols_put (struct xfrm_policy**,int) ;
 int xp_net (struct xfrm_policy*) ;

__attribute__((used)) static int xfrm_expand_policies(const struct flowi *fl, u16 family,
    struct xfrm_policy **pols,
    int *num_pols, int *num_xfrms)
{
 int i;

 if (*num_pols == 0 || !pols[0]) {
  *num_pols = 0;
  *num_xfrms = 0;
  return 0;
 }
 if (IS_ERR(pols[0]))
  return PTR_ERR(pols[0]);

 *num_xfrms = pols[0]->xfrm_nr;
 for (i = 0; i < *num_pols; i++) {
  if (pols[i]->action != XFRM_POLICY_ALLOW) {
   *num_xfrms = -1;
   break;
  }
 }

 return 0;

}
