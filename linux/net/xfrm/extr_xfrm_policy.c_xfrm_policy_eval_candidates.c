
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xfrm_policy {int dummy; } ;
struct xfrm_pol_inexact_candidates {int * res; } ;
struct flowi {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (struct xfrm_policy*) ;
 struct xfrm_policy* __xfrm_policy_eval_candidates (int ,struct xfrm_policy*,struct flowi const*,int ,int ,int,int ) ;

__attribute__((used)) static struct xfrm_policy *
xfrm_policy_eval_candidates(struct xfrm_pol_inexact_candidates *cand,
       struct xfrm_policy *prefer,
       const struct flowi *fl,
       u8 type, u16 family, int dir, u32 if_id)
{
 struct xfrm_policy *tmp;
 int i;

 for (i = 0; i < ARRAY_SIZE(cand->res); i++) {
  tmp = __xfrm_policy_eval_candidates(cand->res[i],
          prefer,
          fl, type, family, dir,
          if_id);
  if (!tmp)
   continue;

  if (IS_ERR(tmp))
   return tmp;
  prefer = tmp;
 }

 return prefer;
}
